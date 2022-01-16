<?php

use Illuminate\Database\Seeder;
use App\Penyakit;

class PenyakitTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$penyakit = array(
            ''
        );

        $penyakit['Tungro'] =  'Tungro';
        $penyakit['Kerdil Rumput'] = 'Kerdil Rumput';
        $penyakit['Blas'] = 'Blas';
        $penyakit['Hawar Pelepah'] = 'Hawar Pelepah';
        $penyakit['Hawar Bakteri'] = 'Hawar Bakteri';

        foreach ($penyakit as $nama) {
            if($nama == $penyakit['Tungro'])
            {
                Penyakit::create([
                    'nama' => $nama,
                    'definisi' => 'Penyakit Tungro merupakan penyakit padi Yang disebabkan oleh dua jenis virus yaitu virus yang berbentuk batang atau virus berbentuk bulat',
                    'penyebab' => 'Roce Tungro Bacilliform Virus (RTBV) dan Rice Tungro Spherical Virus (RTSV)'
                ]);	
            }

            if($nama == $penyakit['Kerdil Rumput'])
            {
                Penyakit::create([
                    'nama' => $nama,
                    'definisi' => 'Penyakit kerdil rumput adalah penyakit yang disebabkan oleh virus yang ditularkan oleh hama wareng batang coklat',
                    'penyebab' => 'Rice Grassy Stunt Virus (RGSV)'
                ]);	
            }

            if($nama == $penyakit['Blas'])
            {
                Penyakit::create([
                    'nama' => $nama,
                    'definisi' => 'Penyakit blas merupakan penyakit yang disebabkan oleh jamur yang menginfeksi semua fase pertumbuhan tanaman padi, mulai dari fase pembibitan sampai pada fase generatif',
                    'penyebab' => 'Jamur Pylicularia Grisea'
                ]);	
            }

            if($nama == $penyakit['Hawar Pelepah'])
            {
                Penyakit::create([
                    'nama' => $nama,
                    'definisi' =>'Penyakit hawar pelepah padi merupakan salah satu penyakit yang penting pada padi didaerah tropik, pengendalian penyakit ini sulit dilakukan karena patogennya memiliki iang yang beragam',
                    'penyebab' => 'Jamur Rhizoctonia Solani Kuhn'
                ]);	
            }

            if($nama == $penyakit['Hawar Bakteri'])
            {
                Penyakit::create([
                    'nama' => $nama,
                    'definisi' =>'Hawar Bakteri merupakan salah satu penyakit pada tanaman padi yang dapat menginfeksi tanaman padi pada semua fase pertumbuhan dari mulai persemaian sampai menjelang panen',
                    'penyebab' => 'Bakteri Xanthomonas OryzaePv. Oryzae'
                ]);	
            }
        }
    }
}
