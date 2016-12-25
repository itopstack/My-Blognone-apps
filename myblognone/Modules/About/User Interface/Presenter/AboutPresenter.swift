//
//  AboutPresenter.swift
//  myblognone
//
//  Created by Kittisak Phetrungnapha on 12/25/2559.
//  Copyright © 2559 Kittisak Phetrungnapha. All rights reserved.
//

import Foundation

class AboutPresenter: AboutPresenterProtocol, AboutInteractorOutputProtocol {
    weak var view: AboutViewProtocol?
    var interactor: AboutInteractorInputProtocol?
    var wireFrame: AboutWireFrameProtocol?
}