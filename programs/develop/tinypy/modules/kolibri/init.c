#include "tp.h"

extern tp_obj kolibri_open(TP);
extern tp_obj kolibri_mainwindow(TP);
extern tp_obj kolibri_debug_print(TP);
extern tp_obj kolibri_socket_module(TP);
extern tp_obj tp_dict(TP);
extern tp_obj tp_fnc(TP,tp_obj v(TP));

void kolibri_init(TP)
{
    tp_obj kolibri_mod = tp_dict(tp);
    tp_obj socket_mod = kolibri_socket_module(tp);

    tp_set(tp, kolibri_mod, tp_string("open"), tp_fnc(tp, kolibri_open));
    tp_set(tp, kolibri_mod, tp_string("window"), tp_fnc(tp, kolibri_mainwindow));
    /* debug */
    tp_set(tp, kolibri_mod, tp_string("debug_print"), tp_fnc(tp, kolibri_debug_print));
    /* socket is a separated module. */
    tp_set(tp, kolibri_mod, tp_string("socket"), socket_mod);

    /* Bind module attributes. */
    tp_set(tp, kolibri_mod, tp_string("__doc__"),
        tp_string("KolibriOS system specific functions."));
    tp_set(tp, kolibri_mod, tp_string("__name__"), tp_string("kolibri"));
    tp_set(tp, kolibri_mod, tp_string("__file__"), tp_string(__FILE__));
    /* Bind to tiny modules[] */
    tp_set(tp, tp->modules, tp_string("kolibri"), kolibri_mod);
}
