//
//  NibFileOwnerLoadable.swift
//  AmityUIKit
//
//  Created by Sarawoot Khunsri on 29/5/2563 BE.
//  Copyright © 2563 Amity Communication. All rights reserved.
//

import UIKit

/// The protocol help to matching uiview class and xib file as the same name
protocol NibFileOwnerLoadable: UIView {
    var contentView: UIView! { get set }
}

extension UnsafeRawPointer {
    public var amityReferenceBundle: Bundle? {
        var dlInfo = dl_info()
        _ = dladdr(self, &dlInfo)
        let path = String(cString: dlInfo.dli_fname)
        return Bundle(url: URL(fileURLWithPath: path).deletingLastPathComponent())
    }
}

extension Bundle {
    public static var amityBundle: Bundle {
        let name = "AmityUIKit"
        if let refBundle = #dsohandle.amityReferenceBundle,
           let url = refBundle.url(forResource: name, withExtension: "bundle"),
           let bundle = Bundle(url: url) {
            return bundle
        } else if let url = Bundle.main.url(forResource: name, withExtension: "bundle"),
                  let bundle = Bundle(url: url) {
            return bundle
        }
        return Bundle(for: Self.self)
    }
}

extension NibFileOwnerLoadable {
    
    /// Returns a `UIView` object instantiated from
    /// - Returns: `UIView`
    func instantiateFromNib() -> UIView? {
        let nib = UINib(nibName: String(describing: Self.self), bundle: Bundle.amityBundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        return view
    }
    
    /// * Load the content of the first view in the XIB.
    /// * Then add this as subview with constraints
    func loadNibContent() {
        guard let view = instantiateFromNib() else {
            fatalError("Failed to instantiate \(String(describing: Self.self)).xib")
        }
        contentView = view
        contentView.backgroundColor = .clear
        backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.leftAnchor.constraint(equalTo: leftAnchor),
            view.rightAnchor.constraint(equalTo: rightAnchor),
        ])
    }
}
