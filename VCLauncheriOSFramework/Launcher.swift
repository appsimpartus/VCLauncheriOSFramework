//
//  Launcher.swift
//  VCLauncheriOSFramework
//
//  Created by Vinay Kolla on 22/10/21.
//

import Foundation
import UIKit
import SafariServices

public final class Launcher {

	public enum Errors {
		case unableToBuildURL
		case unableToGetTopVisibleVC
	}

	func launch(hostURL: String, token: String, ttid: Int, onCompletion: @escaping ((Errors?)->Void)) {

		let finalHostURL = hostURL.replacingOccurrences(of: "http://", with: "https://", options: .literal, range: nil)
		let finalURL = finalHostURL + "gateway/index.html?token=\(token)&vc=\(ttid)"

		guard let url = URL(string: finalURL) else {
			onCompletion(.unableToBuildURL)
			return
		}

		guard let topVC = getTopVC() else {
			onCompletion(.unableToGetTopVisibleVC)
			return
		}

		DispatchQueue.main.async {
			if #available(iOS 13, *) {
				let config = SFSafariViewController.Configuration()
				config.entersReaderIfAvailable = false
				let vc = SFSafariViewController(url: url, configuration: config)
				topVC.present(vc, animated: true)
			}
			else {
				UIApplication.shared.open(url)
			}
		}

		// end of func
	}

	private func getTopVC() -> UIViewController? {

		guard let keyWindow = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else {
			return nil
		}

		let rootVC = keyWindow.rootViewController
		if let nav = rootVC as? UINavigationController {
			return nav.visibleViewController
		}
		else if let tab = rootVC as? UITabBarController, let selectedVC = tab.selectedViewController {
			return selectedVC
		}

		return nil
	}

}
