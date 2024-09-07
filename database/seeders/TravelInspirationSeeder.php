<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class TravelInspirationSeeder extends Seeder
{

    public function run()
    {
        DB::table('travel_inspirations')->insert([
            ['title' => 'Travel Blogs', 'url' => 'https://www.nomadicmatt.com'],
            ['title' => 'Instagram Travel', 'url' => 'https://www.instagram.com/explore/tags/travel/'],
            ['title' => 'Travel Forums', 'url' => 'https://www.reddit.com/r/travel/'],
            ['title' => 'Pinterest Ideas', 'url' => 'https://www.pinterest.com/search/pins/?q=travel'],
            ['title' => 'Travel Shows', 'url' => 'https://www.netflix.com/search?q=travel%20shows'],
            ['title' => 'Travel Websites', 'url' => 'https://www.lonelyplanet.com'],
        ]);
    }
}
