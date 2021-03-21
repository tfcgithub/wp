/* * * * * * * * * * * * * * * * * * * *
 * @author   : Daan van den Bergh
 * @url      : https://daan.dev/wordpress-plugins/caos/
 * @copyright: (c) 2021 Daan van den Bergh
 * @license  : GPL2v2 or later
 * * * * * * * * * * * * * * * * * * * */

var caos_adblock_detect = { init: function () { this.create_element(); }, create_element: function () { var e = document.createElement('div'); e.id = 'caos-detect-ad-block'; e.style.display = 'none'; document.body.appendChild(e); } };

caos_adblock_detect.init();