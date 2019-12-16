class ApplicationController < ActionController::API

    def secretKey
        'mincod'
    end

    def encode(payload)
        JWT.encode(payload, secretKey, 'HS256')
    end

    def decode(token)
        JWT.decode(token, secretKey, true, {algorithm: 'HS256'})[0]
    end
end
