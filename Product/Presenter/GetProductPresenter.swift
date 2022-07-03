//
//  GetProductPresenter.swift
//  Product
//
//  Created by Nunu Nugraha on 03/07/22.
//

import Core

public struct GetProductPresenter<
    Request,
    Response,
    UseCase: UseCaseType
> where UseCase.Request == Request, UseCase.Response == Response {
    
    private let _useCase: UseCase
    
    public init(useCase: UseCase) {
        _useCase = useCase
    }
    
    func execute(request: Request) -> Response {
        return _useCase.execute(request: request)
    }
}
