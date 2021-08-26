class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Apakah anda puas dengan kehidupan anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question":
        "Apakah anda mengurangi banyak aktivitas dan hobi anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "Apakah anda merasa kehidupan anda terasa hampa?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
        "Apakah anda senantiasa bosan?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question":
        "Apakah anda memiliki harapan pada masa depan?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question":
        "Apakah anda terganggu dengan pikiran yang tidak dapat diungkapkan/ keluarkan?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question":
        "Apakah anda bersemangat setiap waktu?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question":
        "Apakah anda takut tentang sesuatu yang buruk yang menimpa anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question":
        "Apakah anda merasa bahagia pada sebagian besar waktu anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question":
        "Apakah anda merasa tidak berdaya?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 11,
    "question":
        "Apakah anda merasa resah dan gelisah?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 12,
    "question":
        "Apakah anda lebih memilih di dalam rumah daripada berjalan-jalan ke luar dan melakukan sesuatu yang baru?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question":
        "Apakah anda seringkali khawatir akan masa depan anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question":
        "Apakah anda merasa mempunyai banyak masalah dengan daya ingat anda dibandingkan kebanyakan orang?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 15,
    "question":
        "Apakah anda berfikir bahwa luar biasa anda diberikan kehidupan sampai sekarang?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 16,
    "question":
        "Apakah anda merasa murung dan sedih?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 17,
    "question":
        "Apakah anda merasa tidak berharga seperti perasaan anda saat kini?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 18,
    "question":
        "Apakah anda mengkhawatirkan masa lalu (kejadian-kejadian masa lalu) anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 19,
    "question":
        "Apakah anda merasakan bahwa kehidupan ini sangat menyenangkan/ menarik?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question":
        "Apakah anda memiliki kesulitan atau merasa berat untuk memulai hal yang baru?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 21,
    "question":
        "Apakah anda memiliki energi maksimal (penuh semangat)?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 22,
    "question":
        "Apakah anda merasa bahwa keadaan anda tidak ada harapan?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 23,
    "question":
        "Apakah anda berfikir bahwa orang lain lebih baik keadaanya daripada anda?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 24,
    "question":
        "Apakah anda seringkali kesal pada hal-hal sepele?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 25,
    "question":
        "Apakah anda seringkali merasa ingin menangis??",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 26,
    "question":
        "Apakah anda memiliki kesulitan dalam berkonsentrasi?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 27,
    "question":
        "Apakah anda senang bangun di pagi hari?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 28,
    "question":
        "Apakah anda a lebih memilih untuk menghindari perkumpulan sosial?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 29,
    "question":
        "Apakah anda  mudah untuk membuat keputusan?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
  {
    "id": 30,
    "question":
        "Apakah pikiran anda jernih seperti biasanya?",
    "options": ['Ya', 'Tidak'],
    "answer_index": 0,
  },
];



















