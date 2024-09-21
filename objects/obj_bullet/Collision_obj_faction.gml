if (faction == other.faction) exit;
instance_destroy();
with(other) event_perform(ev_other, ev_user1);