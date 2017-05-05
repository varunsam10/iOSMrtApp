//
//  Constants.swift
//  Track My MRT
//
//  Created by Thirumal Dhanasekaran on 27/4/17.
//  Copyright © 2017 Team-FT03. All rights reserved.
//

import Foundation

let FROM_LABEL="FROM"
let TO_LABEL="TO"

let SINGAPORE_TIMEZONE = "SGT"
let DATE_FORMAT = "HH:mm"

//JSON Object Names
let STATION_JSON_FILE:String! = "stations"
let DISTANCE_FARE_JSON_FILE:String! = "distancefare"
let STATION_LANE_JSON_FILE:String! = "stationlane"
let CHECKPOINT_JSON_FILE:String! = "checkpoints"

let JSON_TYPE:String! = "json"
let STATION_ROOT_ELEMENT="station"
let STATION_NAME="name"
let STATION_CODE="stationCode"
let STATION_DISTANCE="distance"
let NXT_TRAIN="nxtTrain"
let SUB_TRAIN="subTrain"
let TIME="time"
let PLATFORM="platform"

let DISTANCE_ROOT_ELEMENT="distance"
let DISTANCE_MINIMUM="Minimum Distance"
let DISTANCE_MAXIMUM="Maximum Distance"
let ADULT_FARE="Adult Fare"

let STATION_LANE_ROOT_ELEMENT = "stationlane"
let STATION_LINE_CODE="linecode"
let STATION_LANE_TOTAL_STATIONS = "total number of stations"
let STATION_LANE_TOTAL_DISTANCE = "total distance"
let STATION_LANE_COLOR = "color"

let CHECKPOINT_ROOT_ELEMENT = "checkpoints"
let CHECKPOINT_NAME = "Check Point Name"
let CHECKPOINT_STATION_LINE_ID = "Station Line Id"
let CHECKPOINT_STATION_ID = "Station Number"


let MRT_ARRTIVAL_URL="https://mrtapi.com/api/v1.1/getTrainArrival"

let POST_KEY="APIKey=0203098492592377&stnCode="

let DB_PATH = NSSearchPathForDirectoriesInDomains(.documentationDirectory, .userDomainMask, true)[0] as String


//VIEW IDENTIFIERS


let ROUTEVIEW_CONTROLLER_ID="RouteView"

let FROM_TABLE_CELL_ID="CellFromIdentifier"

let TO_TABLE_CELL_ID="CellToIdentifier"



let ERROR_CODE="Error Code : "
let ERROR_MESSAGE="Error Message : "
let RETURN_CODE="Return Code : "
let INSERTION_ERROR="Failed to insert Data Line : "
let REDUNTANT_TEXT=" min(s)"


// SQL Query Constants

// Distance Table
let DISTANCE_TABLE="Distance"
let DISTANCE_CREATE_SQL="CREATE TABLE DISTANCE (ID INTEGER PRIMARY KEY AUTOINCREMENT, MIN_DISTANCE TEXT,MAX_DISTANCE TEXT, ADULT_FARE TEXT)"

let DISTANCE_INSERT_QUERY="INSERT INTO DISTANCE (MIN_DISTANCE, MAX_DISTANCE, ADULT_FARE) VALUES (?, ?, ?)"

let DISTANCE_SELECT_QUERY="SELECT ADULT_FARE FROM DISTANCE WHERE id=?"

//MRTSTATION TABLE
let MRTSTATION_TABLE="MrtStation"
let MRTSTATION_CREATE_SQL="CREATE TABLE MRTSTATION (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT,CODE TEXT, DESCRIPTION TEXT, DISTANCE TEXT,LOCATION TEXT,STATION_LANE TEXT)"

let MRTSTATION_INSERT_SQL="INSERT INTO MRTSTATION (NAME, CODE, DISTANCE) VALUES (?, ?, ?)"

let MRTSTATION_SELECT_SQL="SELECT CODE,DISTANCE,NAME,ID FROM MRTSTATION WHERE NAME in (?,?)"

//StationLane Table
let STATIONLANE_TABLE = "STATIONLANE"

let STATIONLANE_CREATE_QUERY = "CREATE TABLE STATIONLANE (ID INTEGER PRIMARY KEY AUTOINCREMENT, LANE_CODE TEXT,TOTAL_DISTANCE TEXT, TOTAL_STATIONS TEXT, COLOR TEXT)"

let STATIONLANE_INSERT_QUERY = "INSERT INTO STATIONLANE (LANE_CODE, TOTAL_DISTANCE, TOTAL_STATIONS, COLOR) VALUES (?, ?, ?,?)"

let STATIONLANE_SELECT_QUERY = "SELECT id FROM STATIONLANE WHERE LANE_CODE=?"

// CHECKPOINT STATION TABLE
let CHECKPOINT_TABLE = "CHECKPOINT"

let CHECKPOINT_CREATE_QUERY = "CREATE TABLE CHECKPOINTSTATION (ID INTEGER PRIMARY KEY AUTOINCREMENT, STATION_NAME TEXT,LANE_CODE TEXT, STATION_ID TEXT)"

let CHECKPOINT_INSERT_QUERY = "INSERT INTO CHECKPOINTSTATION (STATION_NAME, LANE_CODE, STATION_ID) VALUES (?, ?, ?)"

let CHECKPOINT_SELECT_QUERY = "SELECT STATION_NAME,STATION_ID FROM CHECKPOINTSTATION WHERE LANE_CODE=?"

