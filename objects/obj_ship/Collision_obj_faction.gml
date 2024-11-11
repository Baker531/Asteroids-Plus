if (faction == other.faction) exit;

else if (shield) {
    show_debug_message("Shields Up!")
    with(other) event_perform(ev_other, ev_user1);
    exit;
}
show_debug_message("Performing")
event_perform(ev_other, ev_user1);
