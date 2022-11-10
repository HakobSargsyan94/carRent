<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class AuthenticateApi extends Middleware
{
    protected function authenticate($request, array $guards)
    {
        $apiToken = $request->query('api-token');
        if (empty($apiToken)) {
            $apiToken = $request->input('api-token');
        }
        if (empty($apiToken)) {
            $apiToken = $request->bearerToken();
        }

        if ($apiToken === config('api_tokens')[0]) return;
        $this->unauthenticated($request, $guards);
    }
}
