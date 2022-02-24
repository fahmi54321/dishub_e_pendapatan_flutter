//TODO SERVER DEV
// const String APP_URL = "http://esurat.energeek.co.id/ikidev/api/";
// TODO SERVER SANBOX
// const String APP_URL = "";

const String TOKEN = 'TOKEN';
const String NOHP = 'NOHP';
const String TipeLogin = 'TipeLogin';
const String loggedInInfoPrefsKey = 'loggedininfo';
const String APIKEY = 'APIKEY';
const String IS_FIRST_RUN = 'isfirstRun';
const String PREFERENCE_TOKEN = "token";
const String PREFERENCE_NAME = "PREFERENCE_NAME";
const String PREFERENCE_LOGIN_DATA = "PREFERENCE_LOGIN_DATA";
const String PREFERENCE_KEEP_LOGIN_DATA = "PREFERENCE_KEEP_LOGIN_DATA";
const String KEY_TO_DETAILS_SURAT = 'KEY_TO_DETAILS_SURAT';

const String PREFERENCE_APP_VERSION = "Versi 1.0.52";

//todo STRING DIBAWAH DIPAKAI UNTUK DI DALAM APP YANG SERING DIGUNAKAN
class StringResources {
  static const String ABORT_TEXT = "Batal";
  static const String AGREE_DELETE_TEXT = "YA, HAPUS";
  static const String EVERYDAY_TEXT = "Setiap Hari";
  static const String EVERYWEEK_TEXT = "Setiap Minggu";
  static const String EVERYMONTH_TEXT = "Setiap Bulan";
  static const String EVERYYEAR_TEXT = "Setiap Tahun";
  static const String FOREVER_TEXT = "Forever";
  static const String REPETITION_TEXT = "Repetitions";
  static const String UNTIL_TEXT = "Until";
  static const String EDIT_SCHEDULE_TEXT = "Edit Jadwal";

  static const List<String> jenisPendapatan = [
    'Parkir',
    'Terminal',
    'Pengujian Kendaraan',
    'Izin Trayek',
    'BLUD (Suroboyo Bus)',
    'Denda Pelanggaran',
  ];

  static const List<String> iconPendapatan = [
    'assets/png/parkir.png',
    'assets/png/pad.png',
    'assets/png/pengujian.png',
    'assets/png/ijin trayek.png',
    'assets/png/sby bus.png',
    'assets/png/derek.png',
  ];

  static const List<String> listFilter = [
    'Semua',
    'TW 1',
    'TW 2',
    'TW 3',
    'TW 4',
    'Periodik',
  ];

  static const List<String> listBulan = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];
}
