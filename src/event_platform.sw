// this is where the contract for the project will be built
// more like the core logic that handles a user's selection of Events

//this is packaged as a library whose API can be easily used by other 
// external applications or smart contracts from the same project.

library event_platform;

use std::{
    identity::Identity;
    contract_id::ContractID;
}


abi eventPlatform {
    #[storage(read, write)]
    fn create_event(maxCapacity: u64, deposit: u64, eventName: str[10]) -> Event;

    #[storage(read, write)] 
    fn rsvp(eventIDd: u64) -> Event;
}


pub struct Event{
    uniqueId: u64,
    maxCapacity: u64,
    deposit: u64,
    owner:Identity,
    name:str[10]
    numberOfRsvps: u64 


}