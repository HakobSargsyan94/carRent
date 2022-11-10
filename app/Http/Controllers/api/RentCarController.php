<?php

namespace App\Http\Controllers\api;

use App\Models\Cars;
use App\Models\User;
use App\Models\UserCarRent;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;

class RentCarController extends BaseController
{
    /**
     * @param $carId
     * @param $userId
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function rentCar(int $carId,int $userId)
    {
        $car = Cars::find($carId);
        $user = User::find($userId);

        if (!$car) return response('wrong car id', 404);
        if (!$user) return response('user not found', 404);

        $isHasARent = UserCarRent::where(['user_id' => $user->id])->orWhere(['car_id' => $car->id])->get();

        if (count($isHasARent) > 0) return response('This user has a booked car/This car already booked');

        $rentACar = UserCarRent::create([
            'user_id' => $userId,
            'car_id' => $carId,
            'created_at' => date("Y-m-d H:i:s")
        ]);

        return $rentACar;
    }
}
