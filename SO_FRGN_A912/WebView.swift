//
//  WebView.swift
//  SO_FRGN_A912
//
//  Created by Jay Vaddoriya on 02/05/22.

import UIKit
import WebKit

var WebURL = String()
class WebView: UIViewController, URLSessionDownloadDelegate, WKUIDelegate, WKNavigationDelegate {
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        guard let url = downloadTask.originalRequest?.url else { return }
            print("fileDownload: urlSession \(url)")
    }
    
    @IBOutlet weak var webView: WKWebView!
    
    var longTitleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL (string: WebURL)
        let requestObj = URLRequest(url: url!)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        webView.load(requestObj)
        
        
        longTitleLabel.backgroundColor = UIColor.clear
        longTitleLabel.numberOfLines = 2
        
        if UIDevice().userInterfaceIdiom == .phone {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        } else {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        }
        
        longTitleLabel.textAlignment = .left
        longTitleLabel.textColor = UIColor.white
        longTitleLabel.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
        longTitleLabel.sizeToFit()
        longTitleLabel.isUserInteractionEnabled = true
        self.navigationItem.hidesBackButton = true
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        longTitleLabel.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        guard let url = URL(string: "https://whyagain.org/") else { return }
        UIApplication.shared.open(url)
    }
    
    func webView(_ webView: WKWebView,
                     decidePolicyFor navigationResponse: WKNavigationResponse,
                     decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
            let url = navigationResponse.response.url
            if (openInDocumentPreview(url!)) {
                if let pdfURL = url {
                    do {
                        let pdfData = try Data(contentsOf: pdfURL)
                        let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [pdfData], applicationActivities: nil)
                        activityViewController.popoverPresentationController?.sourceView = self.longTitleLabel
                        self.present(activityViewController, animated: true, completion: nil)
                    } catch {
                        print("Unable to load data: \(error)")
                    }
                }
                decisionHandler(.cancel)
            } else {
                decisionHandler(.allow)
            }
        }
    
    private func openInDocumentPreview(_ url : URL) -> Bool {
            return url.absoluteString.contains(".pdf")
        }
}
