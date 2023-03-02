[EventKit](https://developer.apple.com/documentation/eventkit)


# [TN3130: Changes to EventKit in macOS Ventura 13](https://developer.apple.com/documentation/technotes/tn3130-changes-to-eventkit-in-macos13-ventura)


- [ ] The inherited initializer init() throws an exception when attempting to create a new calendar. Use init(for:eventStore:) instead. In the legacy behavior, this inherited initializer returns an unusable EKCalendar object.
- [ ] The recurrenceRules property returns an empty array if the calendar item doesn’t have any recurrence rules. In the legacy behavior, recurrenceRules returns nil if the calendar item doesn’t have any recurrence rules.
- [ ] The inherited initializer init() throws an exception when attempting to create a new event. Use init(eventStore:) to create new events. In the legacy behavior, this inherited initializer returns an unusable EKEvent object.
- [ ] The eventIdentifier property now returns identifiers in a new format. The previous identifier format will continue to work.
- [ ] The endDate property of all-day events returns a time of 11:59:59 PM on the last day of this event. In the legacy behavior, this property returns a time of 12:00:00 AM on the day after the event.
- [ ] The sources property now contains delegate sources.
- [ ] events(matching:) and enumerateEvents(matching:using:) no longer necessarily return events sorted by start date.
- [ ] When you call saveCalendar(_:commit:), removeCalendar(_:commit:), save(_:span:commit:), remove(_:span:commit:), save(_:commit:), or remove(_:commit:) methods with the commit parameter set to true, EKEventStore attempts to immediatedly save and commit your changes to the event store. If the commit fails, EKEventStore automatically rolls back all changes that been saved but aren’t yet committed to the event store. In the legacy behavior, uncommitted objects remain saved in the event store.
- [ ] The inherited initializer init() throws an exception when attempting to create a new reminder. Use init(eventStore:) instead.

