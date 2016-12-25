//
//  AboutViewTests.swift
//  myblognone
//
//  Created by Kittisak Phetrungnapha on 12/25/2559.
//  Copyright © 2559 Kittisak Phetrungnapha. All rights reserved.
//

import XCTest
@testable import myblognone

class AboutViewTests: XCTestCase {

    private var view: AboutViewController!
    
    override func setUp() {
        super.setUp()
        
        view = UIStoryboard(name: AboutWireFrame.StoryboardIdentifier, bundle: Bundle.main).instantiateViewController(withIdentifier: AboutWireFrame.AboutViewControllerIdentifier) as! AboutViewController
        let _ = view.view
    }
    
    override func tearDown() {
        view = nil
        super.tearDown()
    }
    
    func testComponentsIsConnectedWithStoryboard() {
        XCTAssertNotNil(view.versionTitleLabel, "VersionTitleLabel should not be nil.")
        XCTAssertNotNil(view.versionValueLabel, "VersionValueLabel should not be nil.")
        XCTAssertNotNil(view.sendFeedbackTitleLabel, "SendFeedback should not be nil.")
        XCTAssertNotNil(view.rateThisAppsLabel, "RateThisAppsLabel should not be nil.")
    }
    
    func testTitleIsSet() {
        XCTAssertNotNil(view.title, "Title should not be nil.")
    }
    
    func testTableViewIsGroupStyle() {
        XCTAssertEqual(view.tableView.style, .grouped, "TableView should be group style.")
    }
    
    func testTableViewWithCorrectSections() {
        XCTAssertEqual(view.tableView.numberOfSections, 1, "TableView's section should be 1.")
    }
    
    func testTableViewHasCorrectRowsWithSection0() {
        XCTAssertEqual(view.tableView.numberOfRows(inSection: 0), 3, "TableView's first section should has 3 rows.")
    }
    
    func testTableViewIsDisableScrolled() {
        XCTAssertFalse(view.tableView.isScrollEnabled, "TableView should not be scrollable.")
    }

}