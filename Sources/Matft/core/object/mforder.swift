//
//  mforder.swift
//  Matft
//
//  Created by Junnosuke Kado on 2020/03/07.
//  Copyright © 2020 jkado. All rights reserved.
//

public enum MfOrder: Int{
   case Row
   case Column

   public static func get_order(mfstructure: MfStructure) -> MfOrder{
       if mfstructure.row_contiguous{
           return .Row
       }

       if mfstructure.column_contiguous{
           return .Column
       }
       // in case neither contiguous, return row major
       return .Row
   }
}

public enum MfSortOrder: Int32{
   case Ascending = 1
   case Descending = -1
}

