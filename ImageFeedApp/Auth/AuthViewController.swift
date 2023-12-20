//
//  AuthViewController.swift
//  ImageFeedApp
//
//  Created by Stanislav Shut on 16.12.2023.
//

import UIKit

final class AuthViewController: UIViewController {
    private let ShowWebViewSegueIdentifier = "ShowWebView"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ShowWebViewSegueIdentifier {
            guard
                let webViewViewController = segue.destination as? WebViewViewController
            else {fatalError("Failed to prepare for \(ShowWebViewSegueIdentifier)") }
            webViewViewController.delegate = self
                             } else {
                super.prepare(for: segue, sender: sender)
            }
    }
}
                             
extension AuthViewController: WebViewViewControllerDelegate {
    func WebViewController(_ vc: WebViewViewController, didAuthenticateWithCode code: String) {
        //TODO: process code
    }
    
    func WebViewControllerDidCancel(_ vc: WebViewViewController) {
        dismiss(animated: true)
    }
    
                
            }
