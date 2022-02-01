public class Application : Gtk.Window {
    public Application () {
        window_position = Gtk.WindowPosition.CENTER;
        set_default_size (350, 70);

        realize.connect (() => {
            get_window ().set_decorations (Gdk.WMDecoration.ALL);
        });
    }

    public static int main (string[] args) {
        Gtk.init (ref args);

        Application app = new Application ();
        app.show_all ();
        Gtk.main ();
        return 0;
    }
}
