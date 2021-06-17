module Svc {

  passive component BufferManager {

    include "Telemetry.fppi"

    include "Events.fppi"

    # ----------------------------------------------------------------------
    # General ports 
    # ----------------------------------------------------------------------

    @ Mutex locked Buffer send in input port
    guarded input port bufferSendIn: Fw.BufferSend

    @ Mutex locked Buffer callee input port
    guarded input port bufferGetCallee: Fw.BufferGet
    
    @ Schedule input port
    sync input port schedIn: Svc.Sched

    # ----------------------------------------------------------------------
    # Special ports 
    # ----------------------------------------------------------------------

    @ Port for getting the time
    time get port timeCaller

    @ Port for emitting events
    event port eventOut

    @ Port for emitting text events
    text event port textEventOut

    @ Port for emitting Telemetry
    telemetry port tlmOut

  }

}
