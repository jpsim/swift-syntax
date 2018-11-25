//// Automatically Generated From SyntaxFactory.swift.gyb.
//// Do Not Edit Directly!
//===------- SyntaxFactory.swift - Syntax Factory implementations ---------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//
//
// This file defines the SyntaxFactory, one of the most important client-facing
// types in lib/Syntax and likely to be very commonly used.
//
// Effectively a namespace, SyntaxFactory is never instantiated, but is *the*
// one-stop shop for making new Syntax nodes. Putting all of these into a
// collection of static methods provides a single point of API lookup for
// clients' convenience.
//
//===----------------------------------------------------------------------===//

public enum SyntaxFactory {
  public static func makeToken(_ kind: TokenKind, presence: SourcePresence,
                 leadingTrivia: Trivia = [],
                 trailingTrivia: Trivia = []) -> TokenSyntax {
    let raw = RawSyntax(kind: kind, leadingTrivia: leadingTrivia,
                        trailingTrivia: trailingTrivia, presence: presence)
    let data = SyntaxData(raw: raw)
    return TokenSyntax(root: data, data: data)
  }

  public static func makeUnknownSyntax(tokens: [TokenSyntax]) -> Syntax {
    let raw = RawSyntax(kind: .unknown, layout: tokens.map { $0.data.raw },
                        presence: .present)
    let data = SyntaxData(raw: raw)
    return UnknownSyntax(root: data, data: data)
  }

/// MARK: Syntax Node Creation APIs







  public static func makeBlankUnknownDecl() -> UnknownDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .unknownDecl,
                                         layout: [
    ], presence: .present))
    return UnknownDeclSyntax(root: data, data: data)
  }

  public static func makeBlankUnknownExpr() -> UnknownExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .unknownExpr,
                                         layout: [
    ], presence: .present))
    return UnknownExprSyntax(root: data, data: data)
  }

  public static func makeBlankUnknownStmt() -> UnknownStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .unknownStmt,
                                         layout: [
    ], presence: .present))
    return UnknownStmtSyntax(root: data, data: data)
  }

  public static func makeBlankUnknownType() -> UnknownTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .unknownType,
                                         layout: [
    ], presence: .present))
    return UnknownTypeSyntax(root: data, data: data)
  }

  public static func makeBlankUnknownPattern() -> UnknownPatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .unknownPattern,
                                         layout: [
    ], presence: .present))
    return UnknownPatternSyntax(root: data, data: data)
  }
  public static func makeCodeBlockItem(item: Syntax, semicolon: TokenSyntax?, errorTokens: Syntax?) -> CodeBlockItemSyntax {
    let layout: [RawSyntax?] = [
      item.data.raw,
      semicolon?.data.raw ?? RawSyntax.missingToken(TokenKind.semicolon),
      errorTokens?.data.raw ?? RawSyntax.missing(SyntaxKind.unknown),
    ]
    let raw = RawSyntax(kind: SyntaxKind.codeBlockItem,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CodeBlockItemSyntax(root: data, data: data)
  }

  public static func makeBlankCodeBlockItem() -> CodeBlockItemSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .codeBlockItem,
                                         layout: [
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.semicolon),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return CodeBlockItemSyntax(root: data, data: data)
  }
  public static func makeCodeBlockItemList(
    _ elements: [CodeBlockItemSyntax]) -> CodeBlockItemListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.codeBlockItemList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CodeBlockItemListSyntax(root: data, data: data)
  }

  public static func makeBlankCodeBlockItemList() -> CodeBlockItemListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .codeBlockItemList,
                                         layout: [
    ], presence: .present))
    return CodeBlockItemListSyntax(root: data, data: data)
  }
  public static func makeCodeBlock(leftBrace: TokenSyntax, statements: CodeBlockItemListSyntax, rightBrace: TokenSyntax) -> CodeBlockSyntax {
    let layout: [RawSyntax?] = [
      leftBrace.data.raw,
      statements.data.raw,
      rightBrace.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.codeBlock,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CodeBlockSyntax(root: data, data: data)
  }

  public static func makeBlankCodeBlock() -> CodeBlockSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .codeBlock,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftBrace),
      RawSyntax.missing(SyntaxKind.codeBlockItemList),
      RawSyntax.missingToken(TokenKind.rightBrace),
    ], presence: .present))
    return CodeBlockSyntax(root: data, data: data)
  }
  public static func makeInOutExpr(ampersand: TokenSyntax, expression: ExprSyntax) -> InOutExprSyntax {
    let layout: [RawSyntax?] = [
      ampersand.data.raw,
      expression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.inOutExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return InOutExprSyntax(root: data, data: data)
  }

  public static func makeBlankInOutExpr() -> InOutExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .inOutExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.prefixAmpersand),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return InOutExprSyntax(root: data, data: data)
  }
  public static func makePoundColumnExpr(poundColumn: TokenSyntax) -> PoundColumnExprSyntax {
    let layout: [RawSyntax?] = [
      poundColumn.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundColumnExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundColumnExprSyntax(root: data, data: data)
  }

  public static func makeBlankPoundColumnExpr() -> PoundColumnExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundColumnExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundColumnKeyword),
    ], presence: .present))
    return PoundColumnExprSyntax(root: data, data: data)
  }
  public static func makeFunctionCallArgumentList(
    _ elements: [FunctionCallArgumentSyntax]) -> FunctionCallArgumentListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.functionCallArgumentList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionCallArgumentListSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionCallArgumentList() -> FunctionCallArgumentListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionCallArgumentList,
                                         layout: [
    ], presence: .present))
    return FunctionCallArgumentListSyntax(root: data, data: data)
  }
  public static func makeTupleElementList(
    _ elements: [TupleElementSyntax]) -> TupleElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.tupleElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TupleElementListSyntax(root: data, data: data)
  }

  public static func makeBlankTupleElementList() -> TupleElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tupleElementList,
                                         layout: [
    ], presence: .present))
    return TupleElementListSyntax(root: data, data: data)
  }
  public static func makeArrayElementList(
    _ elements: [ArrayElementSyntax]) -> ArrayElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.arrayElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ArrayElementListSyntax(root: data, data: data)
  }

  public static func makeBlankArrayElementList() -> ArrayElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .arrayElementList,
                                         layout: [
    ], presence: .present))
    return ArrayElementListSyntax(root: data, data: data)
  }
  public static func makeDictionaryElementList(
    _ elements: [DictionaryElementSyntax]) -> DictionaryElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.dictionaryElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DictionaryElementListSyntax(root: data, data: data)
  }

  public static func makeBlankDictionaryElementList() -> DictionaryElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .dictionaryElementList,
                                         layout: [
    ], presence: .present))
    return DictionaryElementListSyntax(root: data, data: data)
  }
  public static func makeStringInterpolationSegments(
    _ elements: [Syntax]) -> StringInterpolationSegmentsSyntax {
    let raw = RawSyntax(kind: SyntaxKind.stringInterpolationSegments,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return StringInterpolationSegmentsSyntax(root: data, data: data)
  }

  public static func makeBlankStringInterpolationSegments() -> StringInterpolationSegmentsSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .stringInterpolationSegments,
                                         layout: [
    ], presence: .present))
    return StringInterpolationSegmentsSyntax(root: data, data: data)
  }
  public static func makeTryExpr(tryKeyword: TokenSyntax, questionOrExclamationMark: TokenSyntax?, expression: ExprSyntax) -> TryExprSyntax {
    let layout: [RawSyntax?] = [
      tryKeyword.data.raw,
      questionOrExclamationMark?.data.raw ?? RawSyntax.missingToken(TokenKind.postfixQuestionMark),
      expression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.tryExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TryExprSyntax(root: data, data: data)
  }

  public static func makeBlankTryExpr() -> TryExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tryExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.tryKeyword),
      RawSyntax.missingToken(TokenKind.postfixQuestionMark),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return TryExprSyntax(root: data, data: data)
  }
  public static func makeDeclNameArgument(name: TokenSyntax, colon: TokenSyntax) -> DeclNameArgumentSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      colon.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.declNameArgument,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeclNameArgumentSyntax(root: data, data: data)
  }

  public static func makeBlankDeclNameArgument() -> DeclNameArgumentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .declNameArgument,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.colon),
    ], presence: .present))
    return DeclNameArgumentSyntax(root: data, data: data)
  }
  public static func makeDeclNameArgumentList(
    _ elements: [DeclNameArgumentSyntax]) -> DeclNameArgumentListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.declNameArgumentList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeclNameArgumentListSyntax(root: data, data: data)
  }

  public static func makeBlankDeclNameArgumentList() -> DeclNameArgumentListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .declNameArgumentList,
                                         layout: [
    ], presence: .present))
    return DeclNameArgumentListSyntax(root: data, data: data)
  }
  public static func makeDeclNameArguments(leftParen: TokenSyntax, arguments: DeclNameArgumentListSyntax, rightParen: TokenSyntax) -> DeclNameArgumentsSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      arguments.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.declNameArguments,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeclNameArgumentsSyntax(root: data, data: data)
  }

  public static func makeBlankDeclNameArguments() -> DeclNameArgumentsSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .declNameArguments,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.declNameArgumentList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return DeclNameArgumentsSyntax(root: data, data: data)
  }
  public static func makeIdentifierExpr(identifier: TokenSyntax, declNameArguments: DeclNameArgumentsSyntax?) -> IdentifierExprSyntax {
    let layout: [RawSyntax?] = [
      identifier.data.raw,
      declNameArguments?.data.raw ?? RawSyntax.missing(SyntaxKind.declNameArguments),
    ]
    let raw = RawSyntax(kind: SyntaxKind.identifierExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IdentifierExprSyntax(root: data, data: data)
  }

  public static func makeBlankIdentifierExpr() -> IdentifierExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .identifierExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.declNameArguments),
    ], presence: .present))
    return IdentifierExprSyntax(root: data, data: data)
  }
  public static func makeSuperRefExpr(superKeyword: TokenSyntax) -> SuperRefExprSyntax {
    let layout: [RawSyntax?] = [
      superKeyword.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.superRefExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SuperRefExprSyntax(root: data, data: data)
  }

  public static func makeBlankSuperRefExpr() -> SuperRefExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .superRefExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.superKeyword),
    ], presence: .present))
    return SuperRefExprSyntax(root: data, data: data)
  }
  public static func makeNilLiteralExpr(nilKeyword: TokenSyntax) -> NilLiteralExprSyntax {
    let layout: [RawSyntax?] = [
      nilKeyword.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.nilLiteralExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return NilLiteralExprSyntax(root: data, data: data)
  }

  public static func makeBlankNilLiteralExpr() -> NilLiteralExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .nilLiteralExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.nilKeyword),
    ], presence: .present))
    return NilLiteralExprSyntax(root: data, data: data)
  }
  public static func makeDiscardAssignmentExpr(wildcard: TokenSyntax) -> DiscardAssignmentExprSyntax {
    let layout: [RawSyntax?] = [
      wildcard.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.discardAssignmentExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DiscardAssignmentExprSyntax(root: data, data: data)
  }

  public static func makeBlankDiscardAssignmentExpr() -> DiscardAssignmentExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .discardAssignmentExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.wildcardKeyword),
    ], presence: .present))
    return DiscardAssignmentExprSyntax(root: data, data: data)
  }
  public static func makeAssignmentExpr(assignToken: TokenSyntax) -> AssignmentExprSyntax {
    let layout: [RawSyntax?] = [
      assignToken.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.assignmentExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AssignmentExprSyntax(root: data, data: data)
  }

  public static func makeBlankAssignmentExpr() -> AssignmentExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .assignmentExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.equal),
    ], presence: .present))
    return AssignmentExprSyntax(root: data, data: data)
  }
  public static func makeSequenceExpr(elements: ExprListSyntax) -> SequenceExprSyntax {
    let layout: [RawSyntax?] = [
      elements.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.sequenceExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SequenceExprSyntax(root: data, data: data)
  }

  public static func makeBlankSequenceExpr() -> SequenceExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .sequenceExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.exprList),
    ], presence: .present))
    return SequenceExprSyntax(root: data, data: data)
  }
  public static func makeExprList(
    _ elements: [ExprSyntax]) -> ExprListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.exprList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ExprListSyntax(root: data, data: data)
  }

  public static func makeBlankExprList() -> ExprListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .exprList,
                                         layout: [
    ], presence: .present))
    return ExprListSyntax(root: data, data: data)
  }
  public static func makePoundLineExpr(poundLine: TokenSyntax) -> PoundLineExprSyntax {
    let layout: [RawSyntax?] = [
      poundLine.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundLineExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundLineExprSyntax(root: data, data: data)
  }

  public static func makeBlankPoundLineExpr() -> PoundLineExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundLineExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundLineKeyword),
    ], presence: .present))
    return PoundLineExprSyntax(root: data, data: data)
  }
  public static func makePoundFileExpr(poundFile: TokenSyntax) -> PoundFileExprSyntax {
    let layout: [RawSyntax?] = [
      poundFile.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundFileExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundFileExprSyntax(root: data, data: data)
  }

  public static func makeBlankPoundFileExpr() -> PoundFileExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundFileExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundFileKeyword),
    ], presence: .present))
    return PoundFileExprSyntax(root: data, data: data)
  }
  public static func makePoundFunctionExpr(poundFunction: TokenSyntax) -> PoundFunctionExprSyntax {
    let layout: [RawSyntax?] = [
      poundFunction.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundFunctionExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundFunctionExprSyntax(root: data, data: data)
  }

  public static func makeBlankPoundFunctionExpr() -> PoundFunctionExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundFunctionExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundFunctionKeyword),
    ], presence: .present))
    return PoundFunctionExprSyntax(root: data, data: data)
  }
  public static func makePoundDsohandleExpr(poundDsohandle: TokenSyntax) -> PoundDsohandleExprSyntax {
    let layout: [RawSyntax?] = [
      poundDsohandle.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundDsohandleExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundDsohandleExprSyntax(root: data, data: data)
  }

  public static func makeBlankPoundDsohandleExpr() -> PoundDsohandleExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundDsohandleExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundDsohandleKeyword),
    ], presence: .present))
    return PoundDsohandleExprSyntax(root: data, data: data)
  }
  public static func makeSymbolicReferenceExpr(identifier: TokenSyntax, genericArgumentClause: GenericArgumentClauseSyntax?) -> SymbolicReferenceExprSyntax {
    let layout: [RawSyntax?] = [
      identifier.data.raw,
      genericArgumentClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ]
    let raw = RawSyntax(kind: SyntaxKind.symbolicReferenceExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SymbolicReferenceExprSyntax(root: data, data: data)
  }

  public static func makeBlankSymbolicReferenceExpr() -> SymbolicReferenceExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .symbolicReferenceExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ], presence: .present))
    return SymbolicReferenceExprSyntax(root: data, data: data)
  }
  public static func makePrefixOperatorExpr(operatorToken: TokenSyntax?, postfixExpression: ExprSyntax) -> PrefixOperatorExprSyntax {
    let layout: [RawSyntax?] = [
      operatorToken?.data.raw ?? RawSyntax.missingToken(TokenKind.prefixOperator("")),
      postfixExpression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.prefixOperatorExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrefixOperatorExprSyntax(root: data, data: data)
  }

  public static func makeBlankPrefixOperatorExpr() -> PrefixOperatorExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .prefixOperatorExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.prefixOperator("")),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return PrefixOperatorExprSyntax(root: data, data: data)
  }
  public static func makeBinaryOperatorExpr(operatorToken: TokenSyntax) -> BinaryOperatorExprSyntax {
    let layout: [RawSyntax?] = [
      operatorToken.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.binaryOperatorExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return BinaryOperatorExprSyntax(root: data, data: data)
  }

  public static func makeBlankBinaryOperatorExpr() -> BinaryOperatorExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .binaryOperatorExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
    ], presence: .present))
    return BinaryOperatorExprSyntax(root: data, data: data)
  }
  public static func makeArrowExpr(throwsToken: TokenSyntax?, arrowToken: TokenSyntax) -> ArrowExprSyntax {
    let layout: [RawSyntax?] = [
      throwsToken?.data.raw ?? RawSyntax.missingToken(TokenKind.throwsKeyword),
      arrowToken.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.arrowExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ArrowExprSyntax(root: data, data: data)
  }

  public static func makeBlankArrowExpr() -> ArrowExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .arrowExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.throwsKeyword),
      RawSyntax.missingToken(TokenKind.arrow),
    ], presence: .present))
    return ArrowExprSyntax(root: data, data: data)
  }
  public static func makeFloatLiteralExpr(floatingDigits: TokenSyntax) -> FloatLiteralExprSyntax {
    let layout: [RawSyntax?] = [
      floatingDigits.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.floatLiteralExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FloatLiteralExprSyntax(root: data, data: data)
  }

  public static func makeBlankFloatLiteralExpr() -> FloatLiteralExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .floatLiteralExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.floatingLiteral("")),
    ], presence: .present))
    return FloatLiteralExprSyntax(root: data, data: data)
  }
  public static func makeTupleExpr(leftParen: TokenSyntax, elementList: TupleElementListSyntax, rightParen: TokenSyntax) -> TupleExprSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      elementList.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.tupleExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TupleExprSyntax(root: data, data: data)
  }

  public static func makeBlankTupleExpr() -> TupleExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tupleExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.tupleElementList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return TupleExprSyntax(root: data, data: data)
  }
  public static func makeArrayExpr(leftSquare: TokenSyntax, elements: ArrayElementListSyntax, rightSquare: TokenSyntax) -> ArrayExprSyntax {
    let layout: [RawSyntax?] = [
      leftSquare.data.raw,
      elements.data.raw,
      rightSquare.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.arrayExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ArrayExprSyntax(root: data, data: data)
  }

  public static func makeBlankArrayExpr() -> ArrayExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .arrayExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftSquareBracket),
      RawSyntax.missing(SyntaxKind.arrayElementList),
      RawSyntax.missingToken(TokenKind.rightSquareBracket),
    ], presence: .present))
    return ArrayExprSyntax(root: data, data: data)
  }
  public static func makeDictionaryExpr(leftSquare: TokenSyntax, content: Syntax, rightSquare: TokenSyntax) -> DictionaryExprSyntax {
    let layout: [RawSyntax?] = [
      leftSquare.data.raw,
      content.data.raw,
      rightSquare.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.dictionaryExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DictionaryExprSyntax(root: data, data: data)
  }

  public static func makeBlankDictionaryExpr() -> DictionaryExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .dictionaryExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftSquareBracket),
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.rightSquareBracket),
    ], presence: .present))
    return DictionaryExprSyntax(root: data, data: data)
  }
  public static func makeImplicitMemberExpr(dot: TokenSyntax, name: TokenSyntax, declNameArguments: DeclNameArgumentsSyntax?) -> ImplicitMemberExprSyntax {
    let layout: [RawSyntax?] = [
      dot.data.raw,
      name.data.raw,
      declNameArguments?.data.raw ?? RawSyntax.missing(SyntaxKind.declNameArguments),
    ]
    let raw = RawSyntax(kind: SyntaxKind.implicitMemberExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ImplicitMemberExprSyntax(root: data, data: data)
  }

  public static func makeBlankImplicitMemberExpr() -> ImplicitMemberExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .implicitMemberExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.prefixPeriod),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missing(SyntaxKind.declNameArguments),
    ], presence: .present))
    return ImplicitMemberExprSyntax(root: data, data: data)
  }
  public static func makeFunctionCallArgument(label: TokenSyntax?, colon: TokenSyntax?, expression: ExprSyntax, trailingComma: TokenSyntax?) -> FunctionCallArgumentSyntax {
    let layout: [RawSyntax?] = [
      label?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      expression.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.functionCallArgument,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionCallArgumentSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionCallArgument() -> FunctionCallArgumentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionCallArgument,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return FunctionCallArgumentSyntax(root: data, data: data)
  }
  public static func makeTupleElement(label: TokenSyntax?, colon: TokenSyntax?, expression: ExprSyntax, trailingComma: TokenSyntax?) -> TupleElementSyntax {
    let layout: [RawSyntax?] = [
      label?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      expression.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.tupleElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TupleElementSyntax(root: data, data: data)
  }

  public static func makeBlankTupleElement() -> TupleElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tupleElement,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return TupleElementSyntax(root: data, data: data)
  }
  public static func makeArrayElement(expression: ExprSyntax, trailingComma: TokenSyntax?) -> ArrayElementSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.arrayElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ArrayElementSyntax(root: data, data: data)
  }

  public static func makeBlankArrayElement() -> ArrayElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .arrayElement,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return ArrayElementSyntax(root: data, data: data)
  }
  public static func makeDictionaryElement(keyExpression: ExprSyntax, colon: TokenSyntax, valueExpression: ExprSyntax, trailingComma: TokenSyntax?) -> DictionaryElementSyntax {
    let layout: [RawSyntax?] = [
      keyExpression.data.raw,
      colon.data.raw,
      valueExpression.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.dictionaryElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DictionaryElementSyntax(root: data, data: data)
  }

  public static func makeBlankDictionaryElement() -> DictionaryElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .dictionaryElement,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return DictionaryElementSyntax(root: data, data: data)
  }
  public static func makeIntegerLiteralExpr(digits: TokenSyntax) -> IntegerLiteralExprSyntax {
    let layout: [RawSyntax?] = [
      digits.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.integerLiteralExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IntegerLiteralExprSyntax(root: data, data: data)
  }

  public static func makeBlankIntegerLiteralExpr() -> IntegerLiteralExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .integerLiteralExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.integerLiteral("")),
    ], presence: .present))
    return IntegerLiteralExprSyntax(root: data, data: data)
  }
  public static func makeStringLiteralExpr(stringLiteral: TokenSyntax) -> StringLiteralExprSyntax {
    let layout: [RawSyntax?] = [
      stringLiteral.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.stringLiteralExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return StringLiteralExprSyntax(root: data, data: data)
  }

  public static func makeBlankStringLiteralExpr() -> StringLiteralExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .stringLiteralExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.stringLiteral("")),
    ], presence: .present))
    return StringLiteralExprSyntax(root: data, data: data)
  }
  public static func makeBooleanLiteralExpr(booleanLiteral: TokenSyntax) -> BooleanLiteralExprSyntax {
    let layout: [RawSyntax?] = [
      booleanLiteral.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.booleanLiteralExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return BooleanLiteralExprSyntax(root: data, data: data)
  }

  public static func makeBlankBooleanLiteralExpr() -> BooleanLiteralExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .booleanLiteralExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.trueKeyword),
    ], presence: .present))
    return BooleanLiteralExprSyntax(root: data, data: data)
  }
  public static func makeTernaryExpr(conditionExpression: ExprSyntax, questionMark: TokenSyntax, firstChoice: ExprSyntax, colonMark: TokenSyntax, secondChoice: ExprSyntax) -> TernaryExprSyntax {
    let layout: [RawSyntax?] = [
      conditionExpression.data.raw,
      questionMark.data.raw,
      firstChoice.data.raw,
      colonMark.data.raw,
      secondChoice.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.ternaryExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TernaryExprSyntax(root: data, data: data)
  }

  public static func makeBlankTernaryExpr() -> TernaryExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .ternaryExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.infixQuestionMark),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return TernaryExprSyntax(root: data, data: data)
  }
  public static func makeMemberAccessExpr(base: ExprSyntax?, dot: TokenSyntax, name: TokenSyntax, declNameArguments: DeclNameArgumentsSyntax?) -> MemberAccessExprSyntax {
    let layout: [RawSyntax?] = [
      base?.data.raw ?? RawSyntax.missing(SyntaxKind.expr),
      dot.data.raw,
      name.data.raw,
      declNameArguments?.data.raw ?? RawSyntax.missing(SyntaxKind.declNameArguments),
    ]
    let raw = RawSyntax(kind: SyntaxKind.memberAccessExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MemberAccessExprSyntax(root: data, data: data)
  }

  public static func makeBlankMemberAccessExpr() -> MemberAccessExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .memberAccessExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.period),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missing(SyntaxKind.declNameArguments),
    ], presence: .present))
    return MemberAccessExprSyntax(root: data, data: data)
  }
  public static func makeDotSelfExpr(expression: ExprSyntax, dot: TokenSyntax, selfKeyword: TokenSyntax) -> DotSelfExprSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
      dot.data.raw,
      selfKeyword.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.dotSelfExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DotSelfExprSyntax(root: data, data: data)
  }

  public static func makeBlankDotSelfExpr() -> DotSelfExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .dotSelfExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.period),
      RawSyntax.missingToken(TokenKind.selfKeyword),
    ], presence: .present))
    return DotSelfExprSyntax(root: data, data: data)
  }
  public static func makeIsExpr(isTok: TokenSyntax, typeName: TypeSyntax) -> IsExprSyntax {
    let layout: [RawSyntax?] = [
      isTok.data.raw,
      typeName.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.isExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IsExprSyntax(root: data, data: data)
  }

  public static func makeBlankIsExpr() -> IsExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .isExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.isKeyword),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return IsExprSyntax(root: data, data: data)
  }
  public static func makeAsExpr(asTok: TokenSyntax, questionOrExclamationMark: TokenSyntax?, typeName: TypeSyntax) -> AsExprSyntax {
    let layout: [RawSyntax?] = [
      asTok.data.raw,
      questionOrExclamationMark?.data.raw ?? RawSyntax.missingToken(TokenKind.postfixQuestionMark),
      typeName.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.asExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AsExprSyntax(root: data, data: data)
  }

  public static func makeBlankAsExpr() -> AsExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .asExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.asKeyword),
      RawSyntax.missingToken(TokenKind.postfixQuestionMark),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return AsExprSyntax(root: data, data: data)
  }
  public static func makeTypeExpr(type: TypeSyntax) -> TypeExprSyntax {
    let layout: [RawSyntax?] = [
      type.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.typeExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TypeExprSyntax(root: data, data: data)
  }

  public static func makeBlankTypeExpr() -> TypeExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .typeExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return TypeExprSyntax(root: data, data: data)
  }
  public static func makeClosureCaptureItem(specifier: TokenListSyntax?, name: TokenSyntax?, assignToken: TokenSyntax?, expression: ExprSyntax, trailingComma: TokenSyntax?) -> ClosureCaptureItemSyntax {
    let layout: [RawSyntax?] = [
      specifier?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
      name?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      assignToken?.data.raw ?? RawSyntax.missingToken(TokenKind.equal),
      expression.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.closureCaptureItem,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureCaptureItemSyntax(root: data, data: data)
  }

  public static func makeBlankClosureCaptureItem() -> ClosureCaptureItemSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureCaptureItem,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.equal),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return ClosureCaptureItemSyntax(root: data, data: data)
  }
  public static func makeClosureCaptureItemList(
    _ elements: [ClosureCaptureItemSyntax]) -> ClosureCaptureItemListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.closureCaptureItemList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureCaptureItemListSyntax(root: data, data: data)
  }

  public static func makeBlankClosureCaptureItemList() -> ClosureCaptureItemListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureCaptureItemList,
                                         layout: [
    ], presence: .present))
    return ClosureCaptureItemListSyntax(root: data, data: data)
  }
  public static func makeClosureCaptureSignature(leftSquare: TokenSyntax, items: ClosureCaptureItemListSyntax?, rightSquare: TokenSyntax) -> ClosureCaptureSignatureSyntax {
    let layout: [RawSyntax?] = [
      leftSquare.data.raw,
      items?.data.raw ?? RawSyntax.missing(SyntaxKind.closureCaptureItemList),
      rightSquare.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.closureCaptureSignature,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureCaptureSignatureSyntax(root: data, data: data)
  }

  public static func makeBlankClosureCaptureSignature() -> ClosureCaptureSignatureSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureCaptureSignature,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftSquareBracket),
      RawSyntax.missing(SyntaxKind.closureCaptureItemList),
      RawSyntax.missingToken(TokenKind.rightSquareBracket),
    ], presence: .present))
    return ClosureCaptureSignatureSyntax(root: data, data: data)
  }
  public static func makeClosureParam(name: TokenSyntax, trailingComma: TokenSyntax?) -> ClosureParamSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.closureParam,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureParamSyntax(root: data, data: data)
  }

  public static func makeBlankClosureParam() -> ClosureParamSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureParam,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return ClosureParamSyntax(root: data, data: data)
  }
  public static func makeClosureParamList(
    _ elements: [ClosureParamSyntax]) -> ClosureParamListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.closureParamList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureParamListSyntax(root: data, data: data)
  }

  public static func makeBlankClosureParamList() -> ClosureParamListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureParamList,
                                         layout: [
    ], presence: .present))
    return ClosureParamListSyntax(root: data, data: data)
  }
  public static func makeClosureSignature(capture: ClosureCaptureSignatureSyntax?, input: Syntax?, throwsTok: TokenSyntax?, output: ReturnClauseSyntax?, inTok: TokenSyntax) -> ClosureSignatureSyntax {
    let layout: [RawSyntax?] = [
      capture?.data.raw ?? RawSyntax.missing(SyntaxKind.closureCaptureSignature),
      input?.data.raw ?? RawSyntax.missing(SyntaxKind.unknown),
      throwsTok?.data.raw ?? RawSyntax.missingToken(TokenKind.throwsKeyword),
      output?.data.raw ?? RawSyntax.missing(SyntaxKind.returnClause),
      inTok.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.closureSignature,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureSignatureSyntax(root: data, data: data)
  }

  public static func makeBlankClosureSignature() -> ClosureSignatureSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureSignature,
                                         layout: [
      RawSyntax.missing(SyntaxKind.closureCaptureSignature),
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.throwsKeyword),
      RawSyntax.missing(SyntaxKind.returnClause),
      RawSyntax.missingToken(TokenKind.inKeyword),
    ], presence: .present))
    return ClosureSignatureSyntax(root: data, data: data)
  }
  public static func makeClosureExpr(leftBrace: TokenSyntax, signature: ClosureSignatureSyntax?, statements: CodeBlockItemListSyntax, rightBrace: TokenSyntax) -> ClosureExprSyntax {
    let layout: [RawSyntax?] = [
      leftBrace.data.raw,
      signature?.data.raw ?? RawSyntax.missing(SyntaxKind.closureSignature),
      statements.data.raw,
      rightBrace.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.closureExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClosureExprSyntax(root: data, data: data)
  }

  public static func makeBlankClosureExpr() -> ClosureExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .closureExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftBrace),
      RawSyntax.missing(SyntaxKind.closureSignature),
      RawSyntax.missing(SyntaxKind.codeBlockItemList),
      RawSyntax.missingToken(TokenKind.rightBrace),
    ], presence: .present))
    return ClosureExprSyntax(root: data, data: data)
  }
  public static func makeUnresolvedPatternExpr(pattern: PatternSyntax) -> UnresolvedPatternExprSyntax {
    let layout: [RawSyntax?] = [
      pattern.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.unresolvedPatternExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return UnresolvedPatternExprSyntax(root: data, data: data)
  }

  public static func makeBlankUnresolvedPatternExpr() -> UnresolvedPatternExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .unresolvedPatternExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.pattern),
    ], presence: .present))
    return UnresolvedPatternExprSyntax(root: data, data: data)
  }
  public static func makeFunctionCallExpr(calledExpression: ExprSyntax, leftParen: TokenSyntax?, argumentList: FunctionCallArgumentListSyntax, rightParen: TokenSyntax?, trailingClosure: ClosureExprSyntax?) -> FunctionCallExprSyntax {
    let layout: [RawSyntax?] = [
      calledExpression.data.raw,
      leftParen?.data.raw ?? RawSyntax.missingToken(TokenKind.leftParen),
      argumentList.data.raw,
      rightParen?.data.raw ?? RawSyntax.missingToken(TokenKind.rightParen),
      trailingClosure?.data.raw ?? RawSyntax.missing(SyntaxKind.closureExpr),
    ]
    let raw = RawSyntax(kind: SyntaxKind.functionCallExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionCallExprSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionCallExpr() -> FunctionCallExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionCallExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.functionCallArgumentList),
      RawSyntax.missingToken(TokenKind.rightParen),
      RawSyntax.missing(SyntaxKind.closureExpr),
    ], presence: .present))
    return FunctionCallExprSyntax(root: data, data: data)
  }
  public static func makeSubscriptExpr(calledExpression: ExprSyntax, leftBracket: TokenSyntax, argumentList: FunctionCallArgumentListSyntax, rightBracket: TokenSyntax, trailingClosure: ClosureExprSyntax?) -> SubscriptExprSyntax {
    let layout: [RawSyntax?] = [
      calledExpression.data.raw,
      leftBracket.data.raw,
      argumentList.data.raw,
      rightBracket.data.raw,
      trailingClosure?.data.raw ?? RawSyntax.missing(SyntaxKind.closureExpr),
    ]
    let raw = RawSyntax(kind: SyntaxKind.subscriptExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SubscriptExprSyntax(root: data, data: data)
  }

  public static func makeBlankSubscriptExpr() -> SubscriptExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .subscriptExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.leftSquareBracket),
      RawSyntax.missing(SyntaxKind.functionCallArgumentList),
      RawSyntax.missingToken(TokenKind.rightSquareBracket),
      RawSyntax.missing(SyntaxKind.closureExpr),
    ], presence: .present))
    return SubscriptExprSyntax(root: data, data: data)
  }
  public static func makeOptionalChainingExpr(expression: ExprSyntax, questionMark: TokenSyntax) -> OptionalChainingExprSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
      questionMark.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.optionalChainingExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return OptionalChainingExprSyntax(root: data, data: data)
  }

  public static func makeBlankOptionalChainingExpr() -> OptionalChainingExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .optionalChainingExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.postfixQuestionMark),
    ], presence: .present))
    return OptionalChainingExprSyntax(root: data, data: data)
  }
  public static func makeForcedValueExpr(expression: ExprSyntax, exclamationMark: TokenSyntax) -> ForcedValueExprSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
      exclamationMark.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.forcedValueExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ForcedValueExprSyntax(root: data, data: data)
  }

  public static func makeBlankForcedValueExpr() -> ForcedValueExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .forcedValueExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.exclamationMark),
    ], presence: .present))
    return ForcedValueExprSyntax(root: data, data: data)
  }
  public static func makePostfixUnaryExpr(expression: ExprSyntax, operatorToken: TokenSyntax) -> PostfixUnaryExprSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
      operatorToken.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.postfixUnaryExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PostfixUnaryExprSyntax(root: data, data: data)
  }

  public static func makeBlankPostfixUnaryExpr() -> PostfixUnaryExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .postfixUnaryExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.postfixOperator("")),
    ], presence: .present))
    return PostfixUnaryExprSyntax(root: data, data: data)
  }
  public static func makeSpecializeExpr(expression: ExprSyntax, genericArgumentClause: GenericArgumentClauseSyntax) -> SpecializeExprSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
      genericArgumentClause.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.specializeExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SpecializeExprSyntax(root: data, data: data)
  }

  public static func makeBlankSpecializeExpr() -> SpecializeExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .specializeExpr,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ], presence: .present))
    return SpecializeExprSyntax(root: data, data: data)
  }
  public static func makeStringSegment(content: TokenSyntax) -> StringSegmentSyntax {
    let layout: [RawSyntax?] = [
      content.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.stringSegment,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return StringSegmentSyntax(root: data, data: data)
  }

  public static func makeBlankStringSegment() -> StringSegmentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .stringSegment,
                                         layout: [
      RawSyntax.missingToken(TokenKind.stringSegment("")),
    ], presence: .present))
    return StringSegmentSyntax(root: data, data: data)
  }
  public static func makeExpressionSegment(backslash: TokenSyntax, leftParen: TokenSyntax, expression: ExprSyntax, rightParen: TokenSyntax) -> ExpressionSegmentSyntax {
    let layout: [RawSyntax?] = [
      backslash.data.raw,
      leftParen.data.raw,
      expression.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.expressionSegment,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ExpressionSegmentSyntax(root: data, data: data)
  }

  public static func makeBlankExpressionSegment() -> ExpressionSegmentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .expressionSegment,
                                         layout: [
      RawSyntax.missingToken(TokenKind.backslash),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.stringInterpolationAnchor),
    ], presence: .present))
    return ExpressionSegmentSyntax(root: data, data: data)
  }
  public static func makeStringInterpolationExpr(openQuote: TokenSyntax, segments: StringInterpolationSegmentsSyntax, closeQuote: TokenSyntax) -> StringInterpolationExprSyntax {
    let layout: [RawSyntax?] = [
      openQuote.data.raw,
      segments.data.raw,
      closeQuote.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.stringInterpolationExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return StringInterpolationExprSyntax(root: data, data: data)
  }

  public static func makeBlankStringInterpolationExpr() -> StringInterpolationExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .stringInterpolationExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.stringQuote),
      RawSyntax.missing(SyntaxKind.stringInterpolationSegments),
      RawSyntax.missingToken(TokenKind.stringQuote),
    ], presence: .present))
    return StringInterpolationExprSyntax(root: data, data: data)
  }
  public static func makeKeyPathExpr(backslash: TokenSyntax, rootExpr: ExprSyntax?, expression: ExprSyntax) -> KeyPathExprSyntax {
    let layout: [RawSyntax?] = [
      backslash.data.raw,
      rootExpr?.data.raw ?? RawSyntax.missing(SyntaxKind.expr),
      expression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.keyPathExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return KeyPathExprSyntax(root: data, data: data)
  }

  public static func makeBlankKeyPathExpr() -> KeyPathExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .keyPathExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.backslash),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return KeyPathExprSyntax(root: data, data: data)
  }
  public static func makeKeyPathBaseExpr(period: TokenSyntax) -> KeyPathBaseExprSyntax {
    let layout: [RawSyntax?] = [
      period.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.keyPathBaseExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return KeyPathBaseExprSyntax(root: data, data: data)
  }

  public static func makeBlankKeyPathBaseExpr() -> KeyPathBaseExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .keyPathBaseExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.period),
    ], presence: .present))
    return KeyPathBaseExprSyntax(root: data, data: data)
  }
  public static func makeObjcNamePiece(name: TokenSyntax, dot: TokenSyntax?) -> ObjcNamePieceSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      dot?.data.raw ?? RawSyntax.missingToken(TokenKind.period),
    ]
    let raw = RawSyntax(kind: SyntaxKind.objcNamePiece,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjcNamePieceSyntax(root: data, data: data)
  }

  public static func makeBlankObjcNamePiece() -> ObjcNamePieceSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objcNamePiece,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.period),
    ], presence: .present))
    return ObjcNamePieceSyntax(root: data, data: data)
  }
  public static func makeObjcName(
    _ elements: [ObjcNamePieceSyntax]) -> ObjcNameSyntax {
    let raw = RawSyntax(kind: SyntaxKind.objcName,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjcNameSyntax(root: data, data: data)
  }

  public static func makeBlankObjcName() -> ObjcNameSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objcName,
                                         layout: [
    ], presence: .present))
    return ObjcNameSyntax(root: data, data: data)
  }
  public static func makeObjcKeyPathExpr(keyPath: TokenSyntax, leftParen: TokenSyntax, name: ObjcNameSyntax, rightParen: TokenSyntax) -> ObjcKeyPathExprSyntax {
    let layout: [RawSyntax?] = [
      keyPath.data.raw,
      leftParen.data.raw,
      name.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.objcKeyPathExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjcKeyPathExprSyntax(root: data, data: data)
  }

  public static func makeBlankObjcKeyPathExpr() -> ObjcKeyPathExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objcKeyPathExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundKeyPathKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.objcName),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return ObjcKeyPathExprSyntax(root: data, data: data)
  }
  public static func makeObjcSelectorExpr(poundSelector: TokenSyntax, leftParen: TokenSyntax, kind: TokenSyntax?, colon: TokenSyntax?, name: ExprSyntax, rightParen: TokenSyntax) -> ObjcSelectorExprSyntax {
    let layout: [RawSyntax?] = [
      poundSelector.data.raw,
      leftParen.data.raw,
      kind?.data.raw ?? RawSyntax.missingToken(TokenKind.contextualKeyword("")),
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      name.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.objcSelectorExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjcSelectorExprSyntax(root: data, data: data)
  }

  public static func makeBlankObjcSelectorExpr() -> ObjcSelectorExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objcSelectorExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundSelectorKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missingToken(TokenKind.contextualKeyword("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return ObjcSelectorExprSyntax(root: data, data: data)
  }
  public static func makeEditorPlaceholderExpr(identifier: TokenSyntax) -> EditorPlaceholderExprSyntax {
    let layout: [RawSyntax?] = [
      identifier.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.editorPlaceholderExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return EditorPlaceholderExprSyntax(root: data, data: data)
  }

  public static func makeBlankEditorPlaceholderExpr() -> EditorPlaceholderExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .editorPlaceholderExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
    ], presence: .present))
    return EditorPlaceholderExprSyntax(root: data, data: data)
  }
  public static func makeObjectLiteralExpr(identifier: TokenSyntax, leftParen: TokenSyntax, arguments: FunctionCallArgumentListSyntax, rightParen: TokenSyntax) -> ObjectLiteralExprSyntax {
    let layout: [RawSyntax?] = [
      identifier.data.raw,
      leftParen.data.raw,
      arguments.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.objectLiteralExpr,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjectLiteralExprSyntax(root: data, data: data)
  }

  public static func makeBlankObjectLiteralExpr() -> ObjectLiteralExprSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objectLiteralExpr,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundColorLiteralKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.functionCallArgumentList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return ObjectLiteralExprSyntax(root: data, data: data)
  }
  public static func makeTypeInitializerClause(equal: TokenSyntax, value: TypeSyntax) -> TypeInitializerClauseSyntax {
    let layout: [RawSyntax?] = [
      equal.data.raw,
      value.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.typeInitializerClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TypeInitializerClauseSyntax(root: data, data: data)
  }

  public static func makeBlankTypeInitializerClause() -> TypeInitializerClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .typeInitializerClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.equal),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return TypeInitializerClauseSyntax(root: data, data: data)
  }
  public static func makeTypealiasDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, typealiasKeyword: TokenSyntax, identifier: TokenSyntax, genericParameterClause: GenericParameterClauseSyntax?, initializer: TypeInitializerClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?) -> TypealiasDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      typealiasKeyword.data.raw,
      identifier.data.raw,
      genericParameterClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      initializer?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInitializerClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
    ]
    let raw = RawSyntax(kind: SyntaxKind.typealiasDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TypealiasDeclSyntax(root: data, data: data)
  }

  public static func makeBlankTypealiasDecl() -> TypealiasDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .typealiasDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.typealiasKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.typeInitializerClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
    ], presence: .present))
    return TypealiasDeclSyntax(root: data, data: data)
  }
  public static func makeAssociatedtypeDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, associatedtypeKeyword: TokenSyntax, identifier: TokenSyntax, inheritanceClause: TypeInheritanceClauseSyntax?, initializer: TypeInitializerClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?) -> AssociatedtypeDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      associatedtypeKeyword.data.raw,
      identifier.data.raw,
      inheritanceClause?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      initializer?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInitializerClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
    ]
    let raw = RawSyntax(kind: SyntaxKind.associatedtypeDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AssociatedtypeDeclSyntax(root: data, data: data)
  }

  public static func makeBlankAssociatedtypeDecl() -> AssociatedtypeDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .associatedtypeDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.associatedtypeKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      RawSyntax.missing(SyntaxKind.typeInitializerClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
    ], presence: .present))
    return AssociatedtypeDeclSyntax(root: data, data: data)
  }
  public static func makeFunctionParameterList(
    _ elements: [FunctionParameterSyntax]) -> FunctionParameterListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.functionParameterList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionParameterListSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionParameterList() -> FunctionParameterListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionParameterList,
                                         layout: [
    ], presence: .present))
    return FunctionParameterListSyntax(root: data, data: data)
  }
  public static func makeParameterClause(leftParen: TokenSyntax, parameterList: FunctionParameterListSyntax, rightParen: TokenSyntax) -> ParameterClauseSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      parameterList.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.parameterClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ParameterClauseSyntax(root: data, data: data)
  }

  public static func makeBlankParameterClause() -> ParameterClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .parameterClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.functionParameterList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return ParameterClauseSyntax(root: data, data: data)
  }
  public static func makeReturnClause(arrow: TokenSyntax, returnType: TypeSyntax) -> ReturnClauseSyntax {
    let layout: [RawSyntax?] = [
      arrow.data.raw,
      returnType.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.returnClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ReturnClauseSyntax(root: data, data: data)
  }

  public static func makeBlankReturnClause() -> ReturnClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .returnClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.arrow),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return ReturnClauseSyntax(root: data, data: data)
  }
  public static func makeFunctionSignature(input: ParameterClauseSyntax, throwsOrRethrowsKeyword: TokenSyntax?, output: ReturnClauseSyntax?) -> FunctionSignatureSyntax {
    let layout: [RawSyntax?] = [
      input.data.raw,
      throwsOrRethrowsKeyword?.data.raw ?? RawSyntax.missingToken(TokenKind.throwsKeyword),
      output?.data.raw ?? RawSyntax.missing(SyntaxKind.returnClause),
    ]
    let raw = RawSyntax(kind: SyntaxKind.functionSignature,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionSignatureSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionSignature() -> FunctionSignatureSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionSignature,
                                         layout: [
      RawSyntax.missing(SyntaxKind.parameterClause),
      RawSyntax.missingToken(TokenKind.throwsKeyword),
      RawSyntax.missing(SyntaxKind.returnClause),
    ], presence: .present))
    return FunctionSignatureSyntax(root: data, data: data)
  }
  public static func makeIfConfigClause(poundKeyword: TokenSyntax, condition: ExprSyntax?, elements: Syntax) -> IfConfigClauseSyntax {
    let layout: [RawSyntax?] = [
      poundKeyword.data.raw,
      condition?.data.raw ?? RawSyntax.missing(SyntaxKind.expr),
      elements.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.ifConfigClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IfConfigClauseSyntax(root: data, data: data)
  }

  public static func makeBlankIfConfigClause() -> IfConfigClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .ifConfigClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundIfKeyword),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return IfConfigClauseSyntax(root: data, data: data)
  }
  public static func makeIfConfigClauseList(
    _ elements: [IfConfigClauseSyntax]) -> IfConfigClauseListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.ifConfigClauseList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IfConfigClauseListSyntax(root: data, data: data)
  }

  public static func makeBlankIfConfigClauseList() -> IfConfigClauseListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .ifConfigClauseList,
                                         layout: [
    ], presence: .present))
    return IfConfigClauseListSyntax(root: data, data: data)
  }
  public static func makeIfConfigDecl(clauses: IfConfigClauseListSyntax, poundEndif: TokenSyntax) -> IfConfigDeclSyntax {
    let layout: [RawSyntax?] = [
      clauses.data.raw,
      poundEndif.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.ifConfigDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IfConfigDeclSyntax(root: data, data: data)
  }

  public static func makeBlankIfConfigDecl() -> IfConfigDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .ifConfigDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.ifConfigClauseList),
      RawSyntax.missingToken(TokenKind.poundEndifKeyword),
    ], presence: .present))
    return IfConfigDeclSyntax(root: data, data: data)
  }
  public static func makePoundErrorDecl(poundError: TokenSyntax, leftParen: TokenSyntax, message: StringLiteralExprSyntax, rightParen: TokenSyntax) -> PoundErrorDeclSyntax {
    let layout: [RawSyntax?] = [
      poundError.data.raw,
      leftParen.data.raw,
      message.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundErrorDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundErrorDeclSyntax(root: data, data: data)
  }

  public static func makeBlankPoundErrorDecl() -> PoundErrorDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundErrorDecl,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundErrorKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.stringLiteralExpr),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return PoundErrorDeclSyntax(root: data, data: data)
  }
  public static func makePoundWarningDecl(poundWarning: TokenSyntax, leftParen: TokenSyntax, message: StringLiteralExprSyntax, rightParen: TokenSyntax) -> PoundWarningDeclSyntax {
    let layout: [RawSyntax?] = [
      poundWarning.data.raw,
      leftParen.data.raw,
      message.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundWarningDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundWarningDeclSyntax(root: data, data: data)
  }

  public static func makeBlankPoundWarningDecl() -> PoundWarningDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundWarningDecl,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundWarningKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.stringLiteralExpr),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return PoundWarningDeclSyntax(root: data, data: data)
  }
  public static func makePoundSourceLocation(poundSourceLocation: TokenSyntax, leftParen: TokenSyntax, args: PoundSourceLocationArgsSyntax?, rightParen: TokenSyntax) -> PoundSourceLocationSyntax {
    let layout: [RawSyntax?] = [
      poundSourceLocation.data.raw,
      leftParen.data.raw,
      args?.data.raw ?? RawSyntax.missing(SyntaxKind.poundSourceLocationArgs),
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundSourceLocation,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundSourceLocationSyntax(root: data, data: data)
  }

  public static func makeBlankPoundSourceLocation() -> PoundSourceLocationSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundSourceLocation,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundSourceLocationKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.poundSourceLocationArgs),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return PoundSourceLocationSyntax(root: data, data: data)
  }
  public static func makePoundSourceLocationArgs(fileArgLabel: TokenSyntax, fileArgColon: TokenSyntax, fileName: TokenSyntax, comma: TokenSyntax, lineArgLabel: TokenSyntax, lineArgColon: TokenSyntax, lineNumber: TokenSyntax) -> PoundSourceLocationArgsSyntax {
    let layout: [RawSyntax?] = [
      fileArgLabel.data.raw,
      fileArgColon.data.raw,
      fileName.data.raw,
      comma.data.raw,
      lineArgLabel.data.raw,
      lineArgColon.data.raw,
      lineNumber.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundSourceLocationArgs,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundSourceLocationArgsSyntax(root: data, data: data)
  }

  public static func makeBlankPoundSourceLocationArgs() -> PoundSourceLocationArgsSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundSourceLocationArgs,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.stringLiteral("")),
      RawSyntax.missingToken(TokenKind.comma),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.integerLiteral("")),
    ], presence: .present))
    return PoundSourceLocationArgsSyntax(root: data, data: data)
  }
  public static func makeDeclModifier(name: TokenSyntax, detailLeftParen: TokenSyntax?, detail: TokenSyntax?, detailRightParen: TokenSyntax?) -> DeclModifierSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      detailLeftParen?.data.raw ?? RawSyntax.missingToken(TokenKind.leftParen),
      detail?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      detailRightParen?.data.raw ?? RawSyntax.missingToken(TokenKind.rightParen),
    ]
    let raw = RawSyntax(kind: SyntaxKind.declModifier,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeclModifierSyntax(root: data, data: data)
  }

  public static func makeBlankDeclModifier() -> DeclModifierSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .declModifier,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return DeclModifierSyntax(root: data, data: data)
  }
  public static func makeInheritedType(typeName: TypeSyntax, trailingComma: TokenSyntax?) -> InheritedTypeSyntax {
    let layout: [RawSyntax?] = [
      typeName.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.inheritedType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return InheritedTypeSyntax(root: data, data: data)
  }

  public static func makeBlankInheritedType() -> InheritedTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .inheritedType,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return InheritedTypeSyntax(root: data, data: data)
  }
  public static func makeInheritedTypeList(
    _ elements: [InheritedTypeSyntax]) -> InheritedTypeListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.inheritedTypeList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return InheritedTypeListSyntax(root: data, data: data)
  }

  public static func makeBlankInheritedTypeList() -> InheritedTypeListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .inheritedTypeList,
                                         layout: [
    ], presence: .present))
    return InheritedTypeListSyntax(root: data, data: data)
  }
  public static func makeTypeInheritanceClause(colon: TokenSyntax, inheritedTypeCollection: InheritedTypeListSyntax) -> TypeInheritanceClauseSyntax {
    let layout: [RawSyntax?] = [
      colon.data.raw,
      inheritedTypeCollection.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.typeInheritanceClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TypeInheritanceClauseSyntax(root: data, data: data)
  }

  public static func makeBlankTypeInheritanceClause() -> TypeInheritanceClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .typeInheritanceClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.inheritedTypeList),
    ], presence: .present))
    return TypeInheritanceClauseSyntax(root: data, data: data)
  }
  public static func makeClassDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, classKeyword: TokenSyntax, identifier: TokenSyntax, genericParameterClause: GenericParameterClauseSyntax?, inheritanceClause: TypeInheritanceClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?, members: MemberDeclBlockSyntax) -> ClassDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      classKeyword.data.raw,
      identifier.data.raw,
      genericParameterClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      inheritanceClause?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      members.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.classDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClassDeclSyntax(root: data, data: data)
  }

  public static func makeBlankClassDecl() -> ClassDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .classDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.classKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.memberDeclBlock),
    ], presence: .present))
    return ClassDeclSyntax(root: data, data: data)
  }
  public static func makeStructDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, structKeyword: TokenSyntax, identifier: TokenSyntax, genericParameterClause: GenericParameterClauseSyntax?, inheritanceClause: TypeInheritanceClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?, members: MemberDeclBlockSyntax) -> StructDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      structKeyword.data.raw,
      identifier.data.raw,
      genericParameterClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      inheritanceClause?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      members.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.structDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return StructDeclSyntax(root: data, data: data)
  }

  public static func makeBlankStructDecl() -> StructDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .structDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.structKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.memberDeclBlock),
    ], presence: .present))
    return StructDeclSyntax(root: data, data: data)
  }
  public static func makeProtocolDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, protocolKeyword: TokenSyntax, identifier: TokenSyntax, inheritanceClause: TypeInheritanceClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?, members: MemberDeclBlockSyntax) -> ProtocolDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      protocolKeyword.data.raw,
      identifier.data.raw,
      inheritanceClause?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      members.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.protocolDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ProtocolDeclSyntax(root: data, data: data)
  }

  public static func makeBlankProtocolDecl() -> ProtocolDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .protocolDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.protocolKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.memberDeclBlock),
    ], presence: .present))
    return ProtocolDeclSyntax(root: data, data: data)
  }
  public static func makeExtensionDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, extensionKeyword: TokenSyntax, extendedType: TypeSyntax, inheritanceClause: TypeInheritanceClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?, members: MemberDeclBlockSyntax) -> ExtensionDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      extensionKeyword.data.raw,
      extendedType.data.raw,
      inheritanceClause?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      members.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.extensionDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ExtensionDeclSyntax(root: data, data: data)
  }

  public static func makeBlankExtensionDecl() -> ExtensionDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .extensionDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.extensionKeyword),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.memberDeclBlock),
    ], presence: .present))
    return ExtensionDeclSyntax(root: data, data: data)
  }
  public static func makeMemberDeclBlock(leftBrace: TokenSyntax, members: MemberDeclListSyntax, rightBrace: TokenSyntax) -> MemberDeclBlockSyntax {
    let layout: [RawSyntax?] = [
      leftBrace.data.raw,
      members.data.raw,
      rightBrace.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.memberDeclBlock,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MemberDeclBlockSyntax(root: data, data: data)
  }

  public static func makeBlankMemberDeclBlock() -> MemberDeclBlockSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .memberDeclBlock,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftBrace),
      RawSyntax.missing(SyntaxKind.memberDeclList),
      RawSyntax.missingToken(TokenKind.rightBrace),
    ], presence: .present))
    return MemberDeclBlockSyntax(root: data, data: data)
  }
  public static func makeMemberDeclList(
    _ elements: [MemberDeclListItemSyntax]) -> MemberDeclListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.memberDeclList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MemberDeclListSyntax(root: data, data: data)
  }

  public static func makeBlankMemberDeclList() -> MemberDeclListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .memberDeclList,
                                         layout: [
    ], presence: .present))
    return MemberDeclListSyntax(root: data, data: data)
  }
  public static func makeMemberDeclListItem(decl: DeclSyntax, semicolon: TokenSyntax?) -> MemberDeclListItemSyntax {
    let layout: [RawSyntax?] = [
      decl.data.raw,
      semicolon?.data.raw ?? RawSyntax.missingToken(TokenKind.semicolon),
    ]
    let raw = RawSyntax(kind: SyntaxKind.memberDeclListItem,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MemberDeclListItemSyntax(root: data, data: data)
  }

  public static func makeBlankMemberDeclListItem() -> MemberDeclListItemSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .memberDeclListItem,
                                         layout: [
      RawSyntax.missing(SyntaxKind.decl),
      RawSyntax.missingToken(TokenKind.semicolon),
    ], presence: .present))
    return MemberDeclListItemSyntax(root: data, data: data)
  }
  public static func makeSourceFile(statements: CodeBlockItemListSyntax, eofToken: TokenSyntax) -> SourceFileSyntax {
    let layout: [RawSyntax?] = [
      statements.data.raw,
      eofToken.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.sourceFile,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SourceFileSyntax(root: data, data: data)
  }

  public static func makeBlankSourceFile() -> SourceFileSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .sourceFile,
                                         layout: [
      RawSyntax.missing(SyntaxKind.codeBlockItemList),
      RawSyntax.missingToken(TokenKind.unknown("")),
    ], presence: .present))
    return SourceFileSyntax(root: data, data: data)
  }
  public static func makeInitializerClause(equal: TokenSyntax, value: ExprSyntax) -> InitializerClauseSyntax {
    let layout: [RawSyntax?] = [
      equal.data.raw,
      value.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.initializerClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return InitializerClauseSyntax(root: data, data: data)
  }

  public static func makeBlankInitializerClause() -> InitializerClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .initializerClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.equal),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return InitializerClauseSyntax(root: data, data: data)
  }
  public static func makeFunctionParameter(attributes: AttributeListSyntax?, firstName: TokenSyntax?, secondName: TokenSyntax?, colon: TokenSyntax?, type: TypeSyntax?, ellipsis: TokenSyntax?, defaultArgument: InitializerClauseSyntax?, trailingComma: TokenSyntax?) -> FunctionParameterSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      firstName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      secondName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      type?.data.raw ?? RawSyntax.missing(SyntaxKind.type),
      ellipsis?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
      defaultArgument?.data.raw ?? RawSyntax.missing(SyntaxKind.initializerClause),
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.functionParameter,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionParameterSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionParameter() -> FunctionParameterSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionParameter,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missing(SyntaxKind.initializerClause),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return FunctionParameterSyntax(root: data, data: data)
  }
  public static func makeModifierList(
    _ elements: [DeclModifierSyntax]) -> ModifierListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.modifierList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ModifierListSyntax(root: data, data: data)
  }

  public static func makeBlankModifierList() -> ModifierListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .modifierList,
                                         layout: [
    ], presence: .present))
    return ModifierListSyntax(root: data, data: data)
  }
  public static func makeFunctionDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, funcKeyword: TokenSyntax, identifier: TokenSyntax, genericParameterClause: GenericParameterClauseSyntax?, signature: FunctionSignatureSyntax, genericWhereClause: GenericWhereClauseSyntax?, body: CodeBlockSyntax?) -> FunctionDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      funcKeyword.data.raw,
      identifier.data.raw,
      genericParameterClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      signature.data.raw,
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      body?.data.raw ?? RawSyntax.missing(SyntaxKind.codeBlock),
    ]
    let raw = RawSyntax(kind: SyntaxKind.functionDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionDeclSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionDecl() -> FunctionDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.funcKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.functionSignature),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return FunctionDeclSyntax(root: data, data: data)
  }
  public static func makeInitializerDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, initKeyword: TokenSyntax, optionalMark: TokenSyntax?, genericParameterClause: GenericParameterClauseSyntax?, parameters: ParameterClauseSyntax, throwsOrRethrowsKeyword: TokenSyntax?, genericWhereClause: GenericWhereClauseSyntax?, body: CodeBlockSyntax?) -> InitializerDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      initKeyword.data.raw,
      optionalMark?.data.raw ?? RawSyntax.missingToken(TokenKind.postfixQuestionMark),
      genericParameterClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      parameters.data.raw,
      throwsOrRethrowsKeyword?.data.raw ?? RawSyntax.missingToken(TokenKind.throwsKeyword),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      body?.data.raw ?? RawSyntax.missing(SyntaxKind.codeBlock),
    ]
    let raw = RawSyntax(kind: SyntaxKind.initializerDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return InitializerDeclSyntax(root: data, data: data)
  }

  public static func makeBlankInitializerDecl() -> InitializerDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .initializerDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.initKeyword),
      RawSyntax.missingToken(TokenKind.postfixQuestionMark),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.parameterClause),
      RawSyntax.missingToken(TokenKind.throwsKeyword),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return InitializerDeclSyntax(root: data, data: data)
  }
  public static func makeDeinitializerDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, deinitKeyword: TokenSyntax, body: CodeBlockSyntax) -> DeinitializerDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      deinitKeyword.data.raw,
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.deinitializerDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeinitializerDeclSyntax(root: data, data: data)
  }

  public static func makeBlankDeinitializerDecl() -> DeinitializerDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .deinitializerDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.deinitKeyword),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return DeinitializerDeclSyntax(root: data, data: data)
  }
  public static func makeSubscriptDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, subscriptKeyword: TokenSyntax, genericParameterClause: GenericParameterClauseSyntax?, indices: ParameterClauseSyntax, result: ReturnClauseSyntax, genericWhereClause: GenericWhereClauseSyntax?, accessor: Syntax?) -> SubscriptDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      subscriptKeyword.data.raw,
      genericParameterClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      indices.data.raw,
      result.data.raw,
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      accessor?.data.raw ?? RawSyntax.missing(SyntaxKind.unknown),
    ]
    let raw = RawSyntax(kind: SyntaxKind.subscriptDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SubscriptDeclSyntax(root: data, data: data)
  }

  public static func makeBlankSubscriptDecl() -> SubscriptDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .subscriptDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.subscriptKeyword),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.parameterClause),
      RawSyntax.missing(SyntaxKind.returnClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return SubscriptDeclSyntax(root: data, data: data)
  }
  public static func makeAccessLevelModifier(name: TokenSyntax, leftParen: TokenSyntax?, modifier: TokenSyntax?, rightParen: TokenSyntax?) -> AccessLevelModifierSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      leftParen?.data.raw ?? RawSyntax.missingToken(TokenKind.leftParen),
      modifier?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      rightParen?.data.raw ?? RawSyntax.missingToken(TokenKind.rightParen),
    ]
    let raw = RawSyntax(kind: SyntaxKind.accessLevelModifier,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessLevelModifierSyntax(root: data, data: data)
  }

  public static func makeBlankAccessLevelModifier() -> AccessLevelModifierSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessLevelModifier,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return AccessLevelModifierSyntax(root: data, data: data)
  }
  public static func makeAccessPathComponent(name: TokenSyntax, trailingDot: TokenSyntax?) -> AccessPathComponentSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      trailingDot?.data.raw ?? RawSyntax.missingToken(TokenKind.period),
    ]
    let raw = RawSyntax(kind: SyntaxKind.accessPathComponent,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessPathComponentSyntax(root: data, data: data)
  }

  public static func makeBlankAccessPathComponent() -> AccessPathComponentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessPathComponent,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.period),
    ], presence: .present))
    return AccessPathComponentSyntax(root: data, data: data)
  }
  public static func makeAccessPath(
    _ elements: [AccessPathComponentSyntax]) -> AccessPathSyntax {
    let raw = RawSyntax(kind: SyntaxKind.accessPath,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessPathSyntax(root: data, data: data)
  }

  public static func makeBlankAccessPath() -> AccessPathSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessPath,
                                         layout: [
    ], presence: .present))
    return AccessPathSyntax(root: data, data: data)
  }
  public static func makeImportDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, importTok: TokenSyntax, importKind: TokenSyntax?, path: AccessPathSyntax) -> ImportDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      importTok.data.raw,
      importKind?.data.raw ?? RawSyntax.missingToken(TokenKind.typealiasKeyword),
      path.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.importDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ImportDeclSyntax(root: data, data: data)
  }

  public static func makeBlankImportDecl() -> ImportDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .importDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.importKeyword),
      RawSyntax.missingToken(TokenKind.typealiasKeyword),
      RawSyntax.missing(SyntaxKind.accessPath),
    ], presence: .present))
    return ImportDeclSyntax(root: data, data: data)
  }
  public static func makeAccessorParameter(leftParen: TokenSyntax, name: TokenSyntax, rightParen: TokenSyntax) -> AccessorParameterSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      name.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.accessorParameter,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessorParameterSyntax(root: data, data: data)
  }

  public static func makeBlankAccessorParameter() -> AccessorParameterSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessorParameter,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return AccessorParameterSyntax(root: data, data: data)
  }
  public static func makeAccessorDecl(attributes: AttributeListSyntax?, modifier: DeclModifierSyntax?, accessorKind: TokenSyntax, parameter: AccessorParameterSyntax?, body: CodeBlockSyntax?) -> AccessorDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifier?.data.raw ?? RawSyntax.missing(SyntaxKind.declModifier),
      accessorKind.data.raw,
      parameter?.data.raw ?? RawSyntax.missing(SyntaxKind.accessorParameter),
      body?.data.raw ?? RawSyntax.missing(SyntaxKind.codeBlock),
    ]
    let raw = RawSyntax(kind: SyntaxKind.accessorDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessorDeclSyntax(root: data, data: data)
  }

  public static func makeBlankAccessorDecl() -> AccessorDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessorDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.declModifier),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missing(SyntaxKind.accessorParameter),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return AccessorDeclSyntax(root: data, data: data)
  }
  public static func makeAccessorList(
    _ elements: [AccessorDeclSyntax]) -> AccessorListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.accessorList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessorListSyntax(root: data, data: data)
  }

  public static func makeBlankAccessorList() -> AccessorListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessorList,
                                         layout: [
    ], presence: .present))
    return AccessorListSyntax(root: data, data: data)
  }
  public static func makeAccessorBlock(leftBrace: TokenSyntax, accessors: AccessorListSyntax, rightBrace: TokenSyntax) -> AccessorBlockSyntax {
    let layout: [RawSyntax?] = [
      leftBrace.data.raw,
      accessors.data.raw,
      rightBrace.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.accessorBlock,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AccessorBlockSyntax(root: data, data: data)
  }

  public static func makeBlankAccessorBlock() -> AccessorBlockSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .accessorBlock,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftBrace),
      RawSyntax.missing(SyntaxKind.accessorList),
      RawSyntax.missingToken(TokenKind.rightBrace),
    ], presence: .present))
    return AccessorBlockSyntax(root: data, data: data)
  }
  public static func makePatternBinding(pattern: PatternSyntax, typeAnnotation: TypeAnnotationSyntax?, initializer: InitializerClauseSyntax?, accessor: Syntax?, trailingComma: TokenSyntax?) -> PatternBindingSyntax {
    let layout: [RawSyntax?] = [
      pattern.data.raw,
      typeAnnotation?.data.raw ?? RawSyntax.missing(SyntaxKind.typeAnnotation),
      initializer?.data.raw ?? RawSyntax.missing(SyntaxKind.initializerClause),
      accessor?.data.raw ?? RawSyntax.missing(SyntaxKind.unknown),
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.patternBinding,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PatternBindingSyntax(root: data, data: data)
  }

  public static func makeBlankPatternBinding() -> PatternBindingSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .patternBinding,
                                         layout: [
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missing(SyntaxKind.typeAnnotation),
      RawSyntax.missing(SyntaxKind.initializerClause),
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return PatternBindingSyntax(root: data, data: data)
  }
  public static func makePatternBindingList(
    _ elements: [PatternBindingSyntax]) -> PatternBindingListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.patternBindingList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PatternBindingListSyntax(root: data, data: data)
  }

  public static func makeBlankPatternBindingList() -> PatternBindingListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .patternBindingList,
                                         layout: [
    ], presence: .present))
    return PatternBindingListSyntax(root: data, data: data)
  }
  public static func makeVariableDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, letOrVarKeyword: TokenSyntax, bindings: PatternBindingListSyntax) -> VariableDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      letOrVarKeyword.data.raw,
      bindings.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.variableDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return VariableDeclSyntax(root: data, data: data)
  }

  public static func makeBlankVariableDecl() -> VariableDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .variableDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.letKeyword),
      RawSyntax.missing(SyntaxKind.patternBindingList),
    ], presence: .present))
    return VariableDeclSyntax(root: data, data: data)
  }
  public static func makeEnumCaseElement(identifier: TokenSyntax, associatedValue: ParameterClauseSyntax?, rawValue: InitializerClauseSyntax?, trailingComma: TokenSyntax?) -> EnumCaseElementSyntax {
    let layout: [RawSyntax?] = [
      identifier.data.raw,
      associatedValue?.data.raw ?? RawSyntax.missing(SyntaxKind.parameterClause),
      rawValue?.data.raw ?? RawSyntax.missing(SyntaxKind.initializerClause),
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.enumCaseElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return EnumCaseElementSyntax(root: data, data: data)
  }

  public static func makeBlankEnumCaseElement() -> EnumCaseElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .enumCaseElement,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.parameterClause),
      RawSyntax.missing(SyntaxKind.initializerClause),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return EnumCaseElementSyntax(root: data, data: data)
  }
  public static func makeEnumCaseElementList(
    _ elements: [EnumCaseElementSyntax]) -> EnumCaseElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.enumCaseElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return EnumCaseElementListSyntax(root: data, data: data)
  }

  public static func makeBlankEnumCaseElementList() -> EnumCaseElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .enumCaseElementList,
                                         layout: [
    ], presence: .present))
    return EnumCaseElementListSyntax(root: data, data: data)
  }
  public static func makeEnumCaseDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, caseKeyword: TokenSyntax, elements: EnumCaseElementListSyntax) -> EnumCaseDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      caseKeyword.data.raw,
      elements.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.enumCaseDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return EnumCaseDeclSyntax(root: data, data: data)
  }

  public static func makeBlankEnumCaseDecl() -> EnumCaseDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .enumCaseDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.caseKeyword),
      RawSyntax.missing(SyntaxKind.enumCaseElementList),
    ], presence: .present))
    return EnumCaseDeclSyntax(root: data, data: data)
  }
  public static func makeEnumDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, enumKeyword: TokenSyntax, identifier: TokenSyntax, genericParameters: GenericParameterClauseSyntax?, inheritanceClause: TypeInheritanceClauseSyntax?, genericWhereClause: GenericWhereClauseSyntax?, members: MemberDeclBlockSyntax) -> EnumDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      enumKeyword.data.raw,
      identifier.data.raw,
      genericParameters?.data.raw ?? RawSyntax.missing(SyntaxKind.genericParameterClause),
      inheritanceClause?.data.raw ?? RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      genericWhereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericWhereClause),
      members.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.enumDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return EnumDeclSyntax(root: data, data: data)
  }

  public static func makeBlankEnumDecl() -> EnumDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .enumDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.enumKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericParameterClause),
      RawSyntax.missing(SyntaxKind.typeInheritanceClause),
      RawSyntax.missing(SyntaxKind.genericWhereClause),
      RawSyntax.missing(SyntaxKind.memberDeclBlock),
    ], presence: .present))
    return EnumDeclSyntax(root: data, data: data)
  }
  public static func makeOperatorDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, operatorKeyword: TokenSyntax, identifier: TokenSyntax, operatorPrecedenceAndTypes: OperatorPrecedenceAndTypesSyntax?) -> OperatorDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      operatorKeyword.data.raw,
      identifier.data.raw,
      operatorPrecedenceAndTypes?.data.raw ?? RawSyntax.missing(SyntaxKind.operatorPrecedenceAndTypes),
    ]
    let raw = RawSyntax(kind: SyntaxKind.operatorDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return OperatorDeclSyntax(root: data, data: data)
  }

  public static func makeBlankOperatorDecl() -> OperatorDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .operatorDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.operatorKeyword),
      RawSyntax.missingToken(TokenKind.unspacedBinaryOperator("")),
      RawSyntax.missing(SyntaxKind.operatorPrecedenceAndTypes),
    ], presence: .present))
    return OperatorDeclSyntax(root: data, data: data)
  }
  public static func makeIdentifierList(
    _ elements: [TokenSyntax]) -> IdentifierListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.identifierList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IdentifierListSyntax(root: data, data: data)
  }

  public static func makeBlankIdentifierList() -> IdentifierListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .identifierList,
                                         layout: [
    ], presence: .present))
    return IdentifierListSyntax(root: data, data: data)
  }
  public static func makeOperatorPrecedenceAndTypes(colon: TokenSyntax, precedenceGroupAndDesignatedTypes: IdentifierListSyntax) -> OperatorPrecedenceAndTypesSyntax {
    let layout: [RawSyntax?] = [
      colon.data.raw,
      precedenceGroupAndDesignatedTypes.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.operatorPrecedenceAndTypes,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return OperatorPrecedenceAndTypesSyntax(root: data, data: data)
  }

  public static func makeBlankOperatorPrecedenceAndTypes() -> OperatorPrecedenceAndTypesSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .operatorPrecedenceAndTypes,
                                         layout: [
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.identifierList),
    ], presence: .present))
    return OperatorPrecedenceAndTypesSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupDecl(attributes: AttributeListSyntax?, modifiers: ModifierListSyntax?, precedencegroupKeyword: TokenSyntax, identifier: TokenSyntax, leftBrace: TokenSyntax, groupAttributes: PrecedenceGroupAttributeListSyntax, rightBrace: TokenSyntax) -> PrecedenceGroupDeclSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      modifiers?.data.raw ?? RawSyntax.missing(SyntaxKind.modifierList),
      precedencegroupKeyword.data.raw,
      identifier.data.raw,
      leftBrace.data.raw,
      groupAttributes.data.raw,
      rightBrace.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupDecl,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupDeclSyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupDecl() -> PrecedenceGroupDeclSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupDecl,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.modifierList),
      RawSyntax.missingToken(TokenKind.precedencegroupKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.leftBrace),
      RawSyntax.missing(SyntaxKind.precedenceGroupAttributeList),
      RawSyntax.missingToken(TokenKind.rightBrace),
    ], presence: .present))
    return PrecedenceGroupDeclSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupAttributeList(
    _ elements: [Syntax]) -> PrecedenceGroupAttributeListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupAttributeList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupAttributeListSyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupAttributeList() -> PrecedenceGroupAttributeListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupAttributeList,
                                         layout: [
    ], presence: .present))
    return PrecedenceGroupAttributeListSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupRelation(higherThanOrLowerThan: TokenSyntax, colon: TokenSyntax, otherNames: PrecedenceGroupNameListSyntax) -> PrecedenceGroupRelationSyntax {
    let layout: [RawSyntax?] = [
      higherThanOrLowerThan.data.raw,
      colon.data.raw,
      otherNames.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupRelation,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupRelationSyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupRelation() -> PrecedenceGroupRelationSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupRelation,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.precedenceGroupNameList),
    ], presence: .present))
    return PrecedenceGroupRelationSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupNameList(
    _ elements: [PrecedenceGroupNameElementSyntax]) -> PrecedenceGroupNameListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupNameList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupNameListSyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupNameList() -> PrecedenceGroupNameListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupNameList,
                                         layout: [
    ], presence: .present))
    return PrecedenceGroupNameListSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupNameElement(name: TokenSyntax, trailingComma: TokenSyntax?) -> PrecedenceGroupNameElementSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupNameElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupNameElementSyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupNameElement() -> PrecedenceGroupNameElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupNameElement,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return PrecedenceGroupNameElementSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupAssignment(assignmentKeyword: TokenSyntax, colon: TokenSyntax, flag: TokenSyntax) -> PrecedenceGroupAssignmentSyntax {
    let layout: [RawSyntax?] = [
      assignmentKeyword.data.raw,
      colon.data.raw,
      flag.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupAssignment,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupAssignmentSyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupAssignment() -> PrecedenceGroupAssignmentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupAssignment,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.trueKeyword),
    ], presence: .present))
    return PrecedenceGroupAssignmentSyntax(root: data, data: data)
  }
  public static func makePrecedenceGroupAssociativity(associativityKeyword: TokenSyntax, colon: TokenSyntax, value: TokenSyntax) -> PrecedenceGroupAssociativitySyntax {
    let layout: [RawSyntax?] = [
      associativityKeyword.data.raw,
      colon.data.raw,
      value.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.precedenceGroupAssociativity,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PrecedenceGroupAssociativitySyntax(root: data, data: data)
  }

  public static func makeBlankPrecedenceGroupAssociativity() -> PrecedenceGroupAssociativitySyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .precedenceGroupAssociativity,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.identifier("")),
    ], presence: .present))
    return PrecedenceGroupAssociativitySyntax(root: data, data: data)
  }
  public static func makeTokenList(
    _ elements: [TokenSyntax]) -> TokenListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.tokenList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TokenListSyntax(root: data, data: data)
  }

  public static func makeBlankTokenList() -> TokenListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tokenList,
                                         layout: [
    ], presence: .present))
    return TokenListSyntax(root: data, data: data)
  }
  public static func makeNonEmptyTokenList(
    _ elements: [TokenSyntax]) -> NonEmptyTokenListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.nonEmptyTokenList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return NonEmptyTokenListSyntax(root: data, data: data)
  }

  public static func makeBlankNonEmptyTokenList() -> NonEmptyTokenListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .nonEmptyTokenList,
                                         layout: [
    ], presence: .present))
    return NonEmptyTokenListSyntax(root: data, data: data)
  }
  public static func makeAttribute(atSignToken: TokenSyntax, attributeName: TokenSyntax, leftParen: TokenSyntax?, argument: Syntax?, rightParen: TokenSyntax?, tokenList: TokenListSyntax?) -> AttributeSyntax {
    let layout: [RawSyntax?] = [
      atSignToken.data.raw,
      attributeName.data.raw,
      leftParen?.data.raw ?? RawSyntax.missingToken(TokenKind.leftParen),
      argument?.data.raw ?? RawSyntax.missing(SyntaxKind.unknown),
      rightParen?.data.raw ?? RawSyntax.missingToken(TokenKind.rightParen),
      tokenList?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
    ]
    let raw = RawSyntax(kind: SyntaxKind.attribute,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AttributeSyntax(root: data, data: data)
  }

  public static func makeBlankAttribute() -> AttributeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .attribute,
                                         layout: [
      RawSyntax.missingToken(TokenKind.atSign),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.rightParen),
      RawSyntax.missingToken(TokenKind.unknown("")),
    ], presence: .present))
    return AttributeSyntax(root: data, data: data)
  }
  public static func makeAttributeList(
    _ elements: [AttributeSyntax]) -> AttributeListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.attributeList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AttributeListSyntax(root: data, data: data)
  }

  public static func makeBlankAttributeList() -> AttributeListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .attributeList,
                                         layout: [
    ], presence: .present))
    return AttributeListSyntax(root: data, data: data)
  }
  public static func makeSpecializeAttributeSpecList(
    _ elements: [Syntax]) -> SpecializeAttributeSpecListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.specializeAttributeSpecList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SpecializeAttributeSpecListSyntax(root: data, data: data)
  }

  public static func makeBlankSpecializeAttributeSpecList() -> SpecializeAttributeSpecListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .specializeAttributeSpecList,
                                         layout: [
    ], presence: .present))
    return SpecializeAttributeSpecListSyntax(root: data, data: data)
  }
  public static func makeLabeledSpecializeEntry(label: TokenSyntax, colon: TokenSyntax, value: TokenSyntax, trailingComma: TokenSyntax?) -> LabeledSpecializeEntrySyntax {
    let layout: [RawSyntax?] = [
      label.data.raw,
      colon.data.raw,
      value.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.labeledSpecializeEntry,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return LabeledSpecializeEntrySyntax(root: data, data: data)
  }

  public static func makeBlankLabeledSpecializeEntry() -> LabeledSpecializeEntrySyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .labeledSpecializeEntry,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return LabeledSpecializeEntrySyntax(root: data, data: data)
  }
  public static func makeNamedAttributeStringArgument(nameTok: TokenSyntax, colon: TokenSyntax, stringOrDeclname: Syntax) -> NamedAttributeStringArgumentSyntax {
    let layout: [RawSyntax?] = [
      nameTok.data.raw,
      colon.data.raw,
      stringOrDeclname.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.namedAttributeStringArgument,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return NamedAttributeStringArgumentSyntax(root: data, data: data)
  }

  public static func makeBlankNamedAttributeStringArgument() -> NamedAttributeStringArgumentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .namedAttributeStringArgument,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return NamedAttributeStringArgumentSyntax(root: data, data: data)
  }
  public static func makeDeclName(declBaseName: Syntax, declNameArguments: DeclNameArgumentsSyntax?) -> DeclNameSyntax {
    let layout: [RawSyntax?] = [
      declBaseName.data.raw,
      declNameArguments?.data.raw ?? RawSyntax.missing(SyntaxKind.declNameArguments),
    ]
    let raw = RawSyntax(kind: SyntaxKind.declName,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeclNameSyntax(root: data, data: data)
  }

  public static func makeBlankDeclName() -> DeclNameSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .declName,
                                         layout: [
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missing(SyntaxKind.declNameArguments),
    ], presence: .present))
    return DeclNameSyntax(root: data, data: data)
  }
  public static func makeImplementsAttributeArguments(type: SimpleTypeIdentifierSyntax, comma: TokenSyntax, declBaseName: Syntax, declNameArguments: DeclNameArgumentsSyntax?) -> ImplementsAttributeArgumentsSyntax {
    let layout: [RawSyntax?] = [
      type.data.raw,
      comma.data.raw,
      declBaseName.data.raw,
      declNameArguments?.data.raw ?? RawSyntax.missing(SyntaxKind.declNameArguments),
    ]
    let raw = RawSyntax(kind: SyntaxKind.implementsAttributeArguments,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ImplementsAttributeArgumentsSyntax(root: data, data: data)
  }

  public static func makeBlankImplementsAttributeArguments() -> ImplementsAttributeArgumentsSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .implementsAttributeArguments,
                                         layout: [
      RawSyntax.missing(SyntaxKind.simpleTypeIdentifier),
      RawSyntax.missingToken(TokenKind.comma),
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missing(SyntaxKind.declNameArguments),
    ], presence: .present))
    return ImplementsAttributeArgumentsSyntax(root: data, data: data)
  }
  public static func makeObjCSelectorPiece(name: TokenSyntax?, colon: TokenSyntax?) -> ObjCSelectorPieceSyntax {
    let layout: [RawSyntax?] = [
      name?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
    ]
    let raw = RawSyntax(kind: SyntaxKind.objCSelectorPiece,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjCSelectorPieceSyntax(root: data, data: data)
  }

  public static func makeBlankObjCSelectorPiece() -> ObjCSelectorPieceSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objCSelectorPiece,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
    ], presence: .present))
    return ObjCSelectorPieceSyntax(root: data, data: data)
  }
  public static func makeObjCSelector(
    _ elements: [ObjCSelectorPieceSyntax]) -> ObjCSelectorSyntax {
    let raw = RawSyntax(kind: SyntaxKind.objCSelector,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ObjCSelectorSyntax(root: data, data: data)
  }

  public static func makeBlankObjCSelector() -> ObjCSelectorSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .objCSelector,
                                         layout: [
    ], presence: .present))
    return ObjCSelectorSyntax(root: data, data: data)
  }
  public static func makeContinueStmt(continueKeyword: TokenSyntax, label: TokenSyntax?) -> ContinueStmtSyntax {
    let layout: [RawSyntax?] = [
      continueKeyword.data.raw,
      label?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
    ]
    let raw = RawSyntax(kind: SyntaxKind.continueStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ContinueStmtSyntax(root: data, data: data)
  }

  public static func makeBlankContinueStmt() -> ContinueStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .continueStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.continueKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
    ], presence: .present))
    return ContinueStmtSyntax(root: data, data: data)
  }
  public static func makeWhileStmt(labelName: TokenSyntax?, labelColon: TokenSyntax?, whileKeyword: TokenSyntax, conditions: ConditionElementListSyntax, body: CodeBlockSyntax) -> WhileStmtSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      whileKeyword.data.raw,
      conditions.data.raw,
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.whileStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return WhileStmtSyntax(root: data, data: data)
  }

  public static func makeBlankWhileStmt() -> WhileStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .whileStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.whileKeyword),
      RawSyntax.missing(SyntaxKind.conditionElementList),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return WhileStmtSyntax(root: data, data: data)
  }
  public static func makeDeferStmt(deferKeyword: TokenSyntax, body: CodeBlockSyntax) -> DeferStmtSyntax {
    let layout: [RawSyntax?] = [
      deferKeyword.data.raw,
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.deferStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeferStmtSyntax(root: data, data: data)
  }

  public static func makeBlankDeferStmt() -> DeferStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .deferStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.deferKeyword),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return DeferStmtSyntax(root: data, data: data)
  }
  public static func makeExpressionStmt(expression: ExprSyntax) -> ExpressionStmtSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.expressionStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ExpressionStmtSyntax(root: data, data: data)
  }

  public static func makeBlankExpressionStmt() -> ExpressionStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .expressionStmt,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return ExpressionStmtSyntax(root: data, data: data)
  }
  public static func makeSwitchCaseList(
    _ elements: [Syntax]) -> SwitchCaseListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.switchCaseList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SwitchCaseListSyntax(root: data, data: data)
  }

  public static func makeBlankSwitchCaseList() -> SwitchCaseListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .switchCaseList,
                                         layout: [
    ], presence: .present))
    return SwitchCaseListSyntax(root: data, data: data)
  }
  public static func makeRepeatWhileStmt(labelName: TokenSyntax?, labelColon: TokenSyntax?, repeatKeyword: TokenSyntax, body: CodeBlockSyntax, whileKeyword: TokenSyntax, condition: ExprSyntax) -> RepeatWhileStmtSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      repeatKeyword.data.raw,
      body.data.raw,
      whileKeyword.data.raw,
      condition.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.repeatWhileStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return RepeatWhileStmtSyntax(root: data, data: data)
  }

  public static func makeBlankRepeatWhileStmt() -> RepeatWhileStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .repeatWhileStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.repeatKeyword),
      RawSyntax.missing(SyntaxKind.codeBlock),
      RawSyntax.missingToken(TokenKind.whileKeyword),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return RepeatWhileStmtSyntax(root: data, data: data)
  }
  public static func makeGuardStmt(guardKeyword: TokenSyntax, conditions: ConditionElementListSyntax, elseKeyword: TokenSyntax, body: CodeBlockSyntax) -> GuardStmtSyntax {
    let layout: [RawSyntax?] = [
      guardKeyword.data.raw,
      conditions.data.raw,
      elseKeyword.data.raw,
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.guardStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GuardStmtSyntax(root: data, data: data)
  }

  public static func makeBlankGuardStmt() -> GuardStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .guardStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.guardKeyword),
      RawSyntax.missing(SyntaxKind.conditionElementList),
      RawSyntax.missingToken(TokenKind.elseKeyword),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return GuardStmtSyntax(root: data, data: data)
  }
  public static func makeWhereClause(whereKeyword: TokenSyntax, guardResult: ExprSyntax) -> WhereClauseSyntax {
    let layout: [RawSyntax?] = [
      whereKeyword.data.raw,
      guardResult.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.whereClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return WhereClauseSyntax(root: data, data: data)
  }

  public static func makeBlankWhereClause() -> WhereClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .whereClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.whereKeyword),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return WhereClauseSyntax(root: data, data: data)
  }
  public static func makeForInStmt(labelName: TokenSyntax?, labelColon: TokenSyntax?, forKeyword: TokenSyntax, caseKeyword: TokenSyntax?, pattern: PatternSyntax, typeAnnotation: TypeAnnotationSyntax?, inKeyword: TokenSyntax, sequenceExpr: ExprSyntax, whereClause: WhereClauseSyntax?, body: CodeBlockSyntax) -> ForInStmtSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      forKeyword.data.raw,
      caseKeyword?.data.raw ?? RawSyntax.missingToken(TokenKind.caseKeyword),
      pattern.data.raw,
      typeAnnotation?.data.raw ?? RawSyntax.missing(SyntaxKind.typeAnnotation),
      inKeyword.data.raw,
      sequenceExpr.data.raw,
      whereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.whereClause),
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.forInStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ForInStmtSyntax(root: data, data: data)
  }

  public static func makeBlankForInStmt() -> ForInStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .forInStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.forKeyword),
      RawSyntax.missingToken(TokenKind.caseKeyword),
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missing(SyntaxKind.typeAnnotation),
      RawSyntax.missingToken(TokenKind.inKeyword),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missing(SyntaxKind.whereClause),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return ForInStmtSyntax(root: data, data: data)
  }
  public static func makeSwitchStmt(labelName: TokenSyntax?, labelColon: TokenSyntax?, switchKeyword: TokenSyntax, expression: ExprSyntax, leftBrace: TokenSyntax, cases: SwitchCaseListSyntax, rightBrace: TokenSyntax) -> SwitchStmtSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      switchKeyword.data.raw,
      expression.data.raw,
      leftBrace.data.raw,
      cases.data.raw,
      rightBrace.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.switchStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SwitchStmtSyntax(root: data, data: data)
  }

  public static func makeBlankSwitchStmt() -> SwitchStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .switchStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.switchKeyword),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.leftBrace),
      RawSyntax.missing(SyntaxKind.switchCaseList),
      RawSyntax.missingToken(TokenKind.rightBrace),
    ], presence: .present))
    return SwitchStmtSyntax(root: data, data: data)
  }
  public static func makeCatchClauseList(
    _ elements: [CatchClauseSyntax]) -> CatchClauseListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.catchClauseList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CatchClauseListSyntax(root: data, data: data)
  }

  public static func makeBlankCatchClauseList() -> CatchClauseListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .catchClauseList,
                                         layout: [
    ], presence: .present))
    return CatchClauseListSyntax(root: data, data: data)
  }
  public static func makeDoStmt(labelName: TokenSyntax?, labelColon: TokenSyntax?, doKeyword: TokenSyntax, body: CodeBlockSyntax, catchClauses: CatchClauseListSyntax?) -> DoStmtSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      doKeyword.data.raw,
      body.data.raw,
      catchClauses?.data.raw ?? RawSyntax.missing(SyntaxKind.catchClauseList),
    ]
    let raw = RawSyntax(kind: SyntaxKind.doStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DoStmtSyntax(root: data, data: data)
  }

  public static func makeBlankDoStmt() -> DoStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .doStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.doKeyword),
      RawSyntax.missing(SyntaxKind.codeBlock),
      RawSyntax.missing(SyntaxKind.catchClauseList),
    ], presence: .present))
    return DoStmtSyntax(root: data, data: data)
  }
  public static func makeReturnStmt(returnKeyword: TokenSyntax, expression: ExprSyntax?) -> ReturnStmtSyntax {
    let layout: [RawSyntax?] = [
      returnKeyword.data.raw,
      expression?.data.raw ?? RawSyntax.missing(SyntaxKind.expr),
    ]
    let raw = RawSyntax(kind: SyntaxKind.returnStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ReturnStmtSyntax(root: data, data: data)
  }

  public static func makeBlankReturnStmt() -> ReturnStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .returnStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.returnKeyword),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return ReturnStmtSyntax(root: data, data: data)
  }
  public static func makeYieldStmt(yieldKeyword: TokenSyntax, yields: Syntax) -> YieldStmtSyntax {
    let layout: [RawSyntax?] = [
      yieldKeyword.data.raw,
      yields.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.yieldStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return YieldStmtSyntax(root: data, data: data)
  }

  public static func makeBlankYieldStmt() -> YieldStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .yieldStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.yield),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return YieldStmtSyntax(root: data, data: data)
  }
  public static func makeYieldList(leftParen: TokenSyntax, elementList: ExprListSyntax, trailingComma: TokenSyntax?, rightParen: TokenSyntax) -> YieldListSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      elementList.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.yieldList,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return YieldListSyntax(root: data, data: data)
  }

  public static func makeBlankYieldList() -> YieldListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .yieldList,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.exprList),
      RawSyntax.missingToken(TokenKind.comma),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return YieldListSyntax(root: data, data: data)
  }
  public static func makeFallthroughStmt(fallthroughKeyword: TokenSyntax) -> FallthroughStmtSyntax {
    let layout: [RawSyntax?] = [
      fallthroughKeyword.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.fallthroughStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FallthroughStmtSyntax(root: data, data: data)
  }

  public static func makeBlankFallthroughStmt() -> FallthroughStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .fallthroughStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.fallthroughKeyword),
    ], presence: .present))
    return FallthroughStmtSyntax(root: data, data: data)
  }
  public static func makeBreakStmt(breakKeyword: TokenSyntax, label: TokenSyntax?) -> BreakStmtSyntax {
    let layout: [RawSyntax?] = [
      breakKeyword.data.raw,
      label?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
    ]
    let raw = RawSyntax(kind: SyntaxKind.breakStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return BreakStmtSyntax(root: data, data: data)
  }

  public static func makeBlankBreakStmt() -> BreakStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .breakStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.breakKeyword),
      RawSyntax.missingToken(TokenKind.identifier("")),
    ], presence: .present))
    return BreakStmtSyntax(root: data, data: data)
  }
  public static func makeCaseItemList(
    _ elements: [CaseItemSyntax]) -> CaseItemListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.caseItemList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CaseItemListSyntax(root: data, data: data)
  }

  public static func makeBlankCaseItemList() -> CaseItemListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .caseItemList,
                                         layout: [
    ], presence: .present))
    return CaseItemListSyntax(root: data, data: data)
  }
  public static func makeConditionElement(condition: Syntax, trailingComma: TokenSyntax?) -> ConditionElementSyntax {
    let layout: [RawSyntax?] = [
      condition.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.conditionElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ConditionElementSyntax(root: data, data: data)
  }

  public static func makeBlankConditionElement() -> ConditionElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .conditionElement,
                                         layout: [
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return ConditionElementSyntax(root: data, data: data)
  }
  public static func makeAvailabilityCondition(poundAvailableKeyword: TokenSyntax, leftParen: TokenSyntax, availabilitySpec: AvailabilitySpecListSyntax, rightParen: TokenSyntax) -> AvailabilityConditionSyntax {
    let layout: [RawSyntax?] = [
      poundAvailableKeyword.data.raw,
      leftParen.data.raw,
      availabilitySpec.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.availabilityCondition,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AvailabilityConditionSyntax(root: data, data: data)
  }

  public static func makeBlankAvailabilityCondition() -> AvailabilityConditionSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .availabilityCondition,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundAvailableKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.availabilitySpecList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return AvailabilityConditionSyntax(root: data, data: data)
  }
  public static func makeMatchingPatternCondition(caseKeyword: TokenSyntax, pattern: PatternSyntax, typeAnnotation: TypeAnnotationSyntax?, initializer: InitializerClauseSyntax) -> MatchingPatternConditionSyntax {
    let layout: [RawSyntax?] = [
      caseKeyword.data.raw,
      pattern.data.raw,
      typeAnnotation?.data.raw ?? RawSyntax.missing(SyntaxKind.typeAnnotation),
      initializer.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.matchingPatternCondition,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MatchingPatternConditionSyntax(root: data, data: data)
  }

  public static func makeBlankMatchingPatternCondition() -> MatchingPatternConditionSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .matchingPatternCondition,
                                         layout: [
      RawSyntax.missingToken(TokenKind.caseKeyword),
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missing(SyntaxKind.typeAnnotation),
      RawSyntax.missing(SyntaxKind.initializerClause),
    ], presence: .present))
    return MatchingPatternConditionSyntax(root: data, data: data)
  }
  public static func makeOptionalBindingCondition(letOrVarKeyword: TokenSyntax, pattern: PatternSyntax, typeAnnotation: TypeAnnotationSyntax?, initializer: InitializerClauseSyntax) -> OptionalBindingConditionSyntax {
    let layout: [RawSyntax?] = [
      letOrVarKeyword.data.raw,
      pattern.data.raw,
      typeAnnotation?.data.raw ?? RawSyntax.missing(SyntaxKind.typeAnnotation),
      initializer.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.optionalBindingCondition,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return OptionalBindingConditionSyntax(root: data, data: data)
  }

  public static func makeBlankOptionalBindingCondition() -> OptionalBindingConditionSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .optionalBindingCondition,
                                         layout: [
      RawSyntax.missingToken(TokenKind.letKeyword),
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missing(SyntaxKind.typeAnnotation),
      RawSyntax.missing(SyntaxKind.initializerClause),
    ], presence: .present))
    return OptionalBindingConditionSyntax(root: data, data: data)
  }
  public static func makeConditionElementList(
    _ elements: [ConditionElementSyntax]) -> ConditionElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.conditionElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ConditionElementListSyntax(root: data, data: data)
  }

  public static func makeBlankConditionElementList() -> ConditionElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .conditionElementList,
                                         layout: [
    ], presence: .present))
    return ConditionElementListSyntax(root: data, data: data)
  }
  public static func makeDeclarationStmt(declaration: DeclSyntax) -> DeclarationStmtSyntax {
    let layout: [RawSyntax?] = [
      declaration.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.declarationStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DeclarationStmtSyntax(root: data, data: data)
  }

  public static func makeBlankDeclarationStmt() -> DeclarationStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .declarationStmt,
                                         layout: [
      RawSyntax.missing(SyntaxKind.decl),
    ], presence: .present))
    return DeclarationStmtSyntax(root: data, data: data)
  }
  public static func makeThrowStmt(throwKeyword: TokenSyntax, expression: ExprSyntax) -> ThrowStmtSyntax {
    let layout: [RawSyntax?] = [
      throwKeyword.data.raw,
      expression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.throwStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ThrowStmtSyntax(root: data, data: data)
  }

  public static func makeBlankThrowStmt() -> ThrowStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .throwStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.throwKeyword),
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return ThrowStmtSyntax(root: data, data: data)
  }
  public static func makeIfStmt(labelName: TokenSyntax?, labelColon: TokenSyntax?, ifKeyword: TokenSyntax, conditions: ConditionElementListSyntax, body: CodeBlockSyntax, elseKeyword: TokenSyntax?, elseBody: Syntax?) -> IfStmtSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      ifKeyword.data.raw,
      conditions.data.raw,
      body.data.raw,
      elseKeyword?.data.raw ?? RawSyntax.missingToken(TokenKind.elseKeyword),
      elseBody?.data.raw ?? RawSyntax.missing(SyntaxKind.unknown),
    ]
    let raw = RawSyntax(kind: SyntaxKind.ifStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IfStmtSyntax(root: data, data: data)
  }

  public static func makeBlankIfStmt() -> IfStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .ifStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missingToken(TokenKind.ifKeyword),
      RawSyntax.missing(SyntaxKind.conditionElementList),
      RawSyntax.missing(SyntaxKind.codeBlock),
      RawSyntax.missingToken(TokenKind.elseKeyword),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return IfStmtSyntax(root: data, data: data)
  }
  public static func makeElseIfContinuation(ifStatement: IfStmtSyntax) -> ElseIfContinuationSyntax {
    let layout: [RawSyntax?] = [
      ifStatement.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.elseIfContinuation,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ElseIfContinuationSyntax(root: data, data: data)
  }

  public static func makeBlankElseIfContinuation() -> ElseIfContinuationSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .elseIfContinuation,
                                         layout: [
      RawSyntax.missing(SyntaxKind.ifStmt),
    ], presence: .present))
    return ElseIfContinuationSyntax(root: data, data: data)
  }
  public static func makeElseBlock(elseKeyword: TokenSyntax, body: CodeBlockSyntax) -> ElseBlockSyntax {
    let layout: [RawSyntax?] = [
      elseKeyword.data.raw,
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.elseBlock,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ElseBlockSyntax(root: data, data: data)
  }

  public static func makeBlankElseBlock() -> ElseBlockSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .elseBlock,
                                         layout: [
      RawSyntax.missingToken(TokenKind.elseKeyword),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return ElseBlockSyntax(root: data, data: data)
  }
  public static func makeSwitchCase(unknownAttr: AttributeSyntax?, label: Syntax, statements: CodeBlockItemListSyntax) -> SwitchCaseSyntax {
    let layout: [RawSyntax?] = [
      unknownAttr?.data.raw ?? RawSyntax.missing(SyntaxKind.attribute),
      label.data.raw,
      statements.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.switchCase,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SwitchCaseSyntax(root: data, data: data)
  }

  public static func makeBlankSwitchCase() -> SwitchCaseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .switchCase,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attribute),
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missing(SyntaxKind.codeBlockItemList),
    ], presence: .present))
    return SwitchCaseSyntax(root: data, data: data)
  }
  public static func makeSwitchDefaultLabel(defaultKeyword: TokenSyntax, colon: TokenSyntax) -> SwitchDefaultLabelSyntax {
    let layout: [RawSyntax?] = [
      defaultKeyword.data.raw,
      colon.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.switchDefaultLabel,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SwitchDefaultLabelSyntax(root: data, data: data)
  }

  public static func makeBlankSwitchDefaultLabel() -> SwitchDefaultLabelSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .switchDefaultLabel,
                                         layout: [
      RawSyntax.missingToken(TokenKind.defaultKeyword),
      RawSyntax.missingToken(TokenKind.colon),
    ], presence: .present))
    return SwitchDefaultLabelSyntax(root: data, data: data)
  }
  public static func makeCaseItem(pattern: PatternSyntax, whereClause: WhereClauseSyntax?, trailingComma: TokenSyntax?) -> CaseItemSyntax {
    let layout: [RawSyntax?] = [
      pattern.data.raw,
      whereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.whereClause),
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.caseItem,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CaseItemSyntax(root: data, data: data)
  }

  public static func makeBlankCaseItem() -> CaseItemSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .caseItem,
                                         layout: [
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missing(SyntaxKind.whereClause),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return CaseItemSyntax(root: data, data: data)
  }
  public static func makeSwitchCaseLabel(caseKeyword: TokenSyntax, caseItems: CaseItemListSyntax, colon: TokenSyntax) -> SwitchCaseLabelSyntax {
    let layout: [RawSyntax?] = [
      caseKeyword.data.raw,
      caseItems.data.raw,
      colon.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.switchCaseLabel,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SwitchCaseLabelSyntax(root: data, data: data)
  }

  public static func makeBlankSwitchCaseLabel() -> SwitchCaseLabelSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .switchCaseLabel,
                                         layout: [
      RawSyntax.missingToken(TokenKind.caseKeyword),
      RawSyntax.missing(SyntaxKind.caseItemList),
      RawSyntax.missingToken(TokenKind.colon),
    ], presence: .present))
    return SwitchCaseLabelSyntax(root: data, data: data)
  }
  public static func makeCatchClause(catchKeyword: TokenSyntax, pattern: PatternSyntax?, whereClause: WhereClauseSyntax?, body: CodeBlockSyntax) -> CatchClauseSyntax {
    let layout: [RawSyntax?] = [
      catchKeyword.data.raw,
      pattern?.data.raw ?? RawSyntax.missing(SyntaxKind.pattern),
      whereClause?.data.raw ?? RawSyntax.missing(SyntaxKind.whereClause),
      body.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.catchClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CatchClauseSyntax(root: data, data: data)
  }

  public static func makeBlankCatchClause() -> CatchClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .catchClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.catchKeyword),
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missing(SyntaxKind.whereClause),
      RawSyntax.missing(SyntaxKind.codeBlock),
    ], presence: .present))
    return CatchClauseSyntax(root: data, data: data)
  }
  public static func makePoundAssertStmt(poundAssert: TokenSyntax, leftParen: TokenSyntax, condition: ExprSyntax, comma: TokenSyntax?, message: TokenSyntax?, rightParen: TokenSyntax) -> PoundAssertStmtSyntax {
    let layout: [RawSyntax?] = [
      poundAssert.data.raw,
      leftParen.data.raw,
      condition.data.raw,
      comma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
      message?.data.raw ?? RawSyntax.missingToken(TokenKind.stringLiteral("")),
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.poundAssertStmt,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return PoundAssertStmtSyntax(root: data, data: data)
  }

  public static func makeBlankPoundAssertStmt() -> PoundAssertStmtSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .poundAssertStmt,
                                         layout: [
      RawSyntax.missingToken(TokenKind.poundAssertKeyword),
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.expr),
      RawSyntax.missingToken(TokenKind.comma),
      RawSyntax.missingToken(TokenKind.stringLiteral("")),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return PoundAssertStmtSyntax(root: data, data: data)
  }
  public static func makeGenericWhereClause(whereKeyword: TokenSyntax, requirementList: GenericRequirementListSyntax) -> GenericWhereClauseSyntax {
    let layout: [RawSyntax?] = [
      whereKeyword.data.raw,
      requirementList.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.genericWhereClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericWhereClauseSyntax(root: data, data: data)
  }

  public static func makeBlankGenericWhereClause() -> GenericWhereClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericWhereClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.whereKeyword),
      RawSyntax.missing(SyntaxKind.genericRequirementList),
    ], presence: .present))
    return GenericWhereClauseSyntax(root: data, data: data)
  }
  public static func makeGenericRequirementList(
    _ elements: [Syntax]) -> GenericRequirementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.genericRequirementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericRequirementListSyntax(root: data, data: data)
  }

  public static func makeBlankGenericRequirementList() -> GenericRequirementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericRequirementList,
                                         layout: [
    ], presence: .present))
    return GenericRequirementListSyntax(root: data, data: data)
  }
  public static func makeSameTypeRequirement(leftTypeIdentifier: TypeSyntax, equalityToken: TokenSyntax, rightTypeIdentifier: TypeSyntax, trailingComma: TokenSyntax?) -> SameTypeRequirementSyntax {
    let layout: [RawSyntax?] = [
      leftTypeIdentifier.data.raw,
      equalityToken.data.raw,
      rightTypeIdentifier.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.sameTypeRequirement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SameTypeRequirementSyntax(root: data, data: data)
  }

  public static func makeBlankSameTypeRequirement() -> SameTypeRequirementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .sameTypeRequirement,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.spacedBinaryOperator("")),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return SameTypeRequirementSyntax(root: data, data: data)
  }
  public static func makeGenericParameterList(
    _ elements: [GenericParameterSyntax]) -> GenericParameterListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.genericParameterList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericParameterListSyntax(root: data, data: data)
  }

  public static func makeBlankGenericParameterList() -> GenericParameterListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericParameterList,
                                         layout: [
    ], presence: .present))
    return GenericParameterListSyntax(root: data, data: data)
  }
  public static func makeGenericParameter(attributes: AttributeListSyntax?, name: TokenSyntax, colon: TokenSyntax?, inheritedType: TypeSyntax?, trailingComma: TokenSyntax?) -> GenericParameterSyntax {
    let layout: [RawSyntax?] = [
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      name.data.raw,
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      inheritedType?.data.raw ?? RawSyntax.missing(SyntaxKind.type),
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.genericParameter,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericParameterSyntax(root: data, data: data)
  }

  public static func makeBlankGenericParameter() -> GenericParameterSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericParameter,
                                         layout: [
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return GenericParameterSyntax(root: data, data: data)
  }
  public static func makeGenericParameterClause(leftAngleBracket: TokenSyntax, genericParameterList: GenericParameterListSyntax, rightAngleBracket: TokenSyntax) -> GenericParameterClauseSyntax {
    let layout: [RawSyntax?] = [
      leftAngleBracket.data.raw,
      genericParameterList.data.raw,
      rightAngleBracket.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.genericParameterClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericParameterClauseSyntax(root: data, data: data)
  }

  public static func makeBlankGenericParameterClause() -> GenericParameterClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericParameterClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftAngle),
      RawSyntax.missing(SyntaxKind.genericParameterList),
      RawSyntax.missingToken(TokenKind.rightAngle),
    ], presence: .present))
    return GenericParameterClauseSyntax(root: data, data: data)
  }
  public static func makeConformanceRequirement(leftTypeIdentifier: TypeSyntax, colon: TokenSyntax, rightTypeIdentifier: TypeSyntax, trailingComma: TokenSyntax?) -> ConformanceRequirementSyntax {
    let layout: [RawSyntax?] = [
      leftTypeIdentifier.data.raw,
      colon.data.raw,
      rightTypeIdentifier.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.conformanceRequirement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ConformanceRequirementSyntax(root: data, data: data)
  }

  public static func makeBlankConformanceRequirement() -> ConformanceRequirementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .conformanceRequirement,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return ConformanceRequirementSyntax(root: data, data: data)
  }
  public static func makeSimpleTypeIdentifier(name: TokenSyntax, genericArgumentClause: GenericArgumentClauseSyntax?) -> SimpleTypeIdentifierSyntax {
    let layout: [RawSyntax?] = [
      name.data.raw,
      genericArgumentClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ]
    let raw = RawSyntax(kind: SyntaxKind.simpleTypeIdentifier,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return SimpleTypeIdentifierSyntax(root: data, data: data)
  }

  public static func makeBlankSimpleTypeIdentifier() -> SimpleTypeIdentifierSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .simpleTypeIdentifier,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ], presence: .present))
    return SimpleTypeIdentifierSyntax(root: data, data: data)
  }
  public static func makeMemberTypeIdentifier(baseType: TypeSyntax, period: TokenSyntax, name: TokenSyntax, genericArgumentClause: GenericArgumentClauseSyntax?) -> MemberTypeIdentifierSyntax {
    let layout: [RawSyntax?] = [
      baseType.data.raw,
      period.data.raw,
      name.data.raw,
      genericArgumentClause?.data.raw ?? RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ]
    let raw = RawSyntax(kind: SyntaxKind.memberTypeIdentifier,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MemberTypeIdentifierSyntax(root: data, data: data)
  }

  public static func makeBlankMemberTypeIdentifier() -> MemberTypeIdentifierSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .memberTypeIdentifier,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.period),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.genericArgumentClause),
    ], presence: .present))
    return MemberTypeIdentifierSyntax(root: data, data: data)
  }
  public static func makeClassRestrictionType(classKeyword: TokenSyntax) -> ClassRestrictionTypeSyntax {
    let layout: [RawSyntax?] = [
      classKeyword.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.classRestrictionType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ClassRestrictionTypeSyntax(root: data, data: data)
  }

  public static func makeBlankClassRestrictionType() -> ClassRestrictionTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .classRestrictionType,
                                         layout: [
      RawSyntax.missingToken(TokenKind.classKeyword),
    ], presence: .present))
    return ClassRestrictionTypeSyntax(root: data, data: data)
  }
  public static func makeArrayType(leftSquareBracket: TokenSyntax, elementType: TypeSyntax, rightSquareBracket: TokenSyntax) -> ArrayTypeSyntax {
    let layout: [RawSyntax?] = [
      leftSquareBracket.data.raw,
      elementType.data.raw,
      rightSquareBracket.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.arrayType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ArrayTypeSyntax(root: data, data: data)
  }

  public static func makeBlankArrayType() -> ArrayTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .arrayType,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftSquareBracket),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.rightSquareBracket),
    ], presence: .present))
    return ArrayTypeSyntax(root: data, data: data)
  }
  public static func makeDictionaryType(leftSquareBracket: TokenSyntax, keyType: TypeSyntax, colon: TokenSyntax, valueType: TypeSyntax, rightSquareBracket: TokenSyntax) -> DictionaryTypeSyntax {
    let layout: [RawSyntax?] = [
      leftSquareBracket.data.raw,
      keyType.data.raw,
      colon.data.raw,
      valueType.data.raw,
      rightSquareBracket.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.dictionaryType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return DictionaryTypeSyntax(root: data, data: data)
  }

  public static func makeBlankDictionaryType() -> DictionaryTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .dictionaryType,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftSquareBracket),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.rightSquareBracket),
    ], presence: .present))
    return DictionaryTypeSyntax(root: data, data: data)
  }
  public static func makeMetatypeType(baseType: TypeSyntax, period: TokenSyntax, typeOrProtocol: TokenSyntax) -> MetatypeTypeSyntax {
    let layout: [RawSyntax?] = [
      baseType.data.raw,
      period.data.raw,
      typeOrProtocol.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.metatypeType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return MetatypeTypeSyntax(root: data, data: data)
  }

  public static func makeBlankMetatypeType() -> MetatypeTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .metatypeType,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.period),
      RawSyntax.missingToken(TokenKind.identifier("")),
    ], presence: .present))
    return MetatypeTypeSyntax(root: data, data: data)
  }
  public static func makeOptionalType(wrappedType: TypeSyntax, questionMark: TokenSyntax) -> OptionalTypeSyntax {
    let layout: [RawSyntax?] = [
      wrappedType.data.raw,
      questionMark.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.optionalType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return OptionalTypeSyntax(root: data, data: data)
  }

  public static func makeBlankOptionalType() -> OptionalTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .optionalType,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.postfixQuestionMark),
    ], presence: .present))
    return OptionalTypeSyntax(root: data, data: data)
  }
  public static func makeImplicitlyUnwrappedOptionalType(wrappedType: TypeSyntax, exclamationMark: TokenSyntax) -> ImplicitlyUnwrappedOptionalTypeSyntax {
    let layout: [RawSyntax?] = [
      wrappedType.data.raw,
      exclamationMark.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.implicitlyUnwrappedOptionalType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ImplicitlyUnwrappedOptionalTypeSyntax(root: data, data: data)
  }

  public static func makeBlankImplicitlyUnwrappedOptionalType() -> ImplicitlyUnwrappedOptionalTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .implicitlyUnwrappedOptionalType,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.exclamationMark),
    ], presence: .present))
    return ImplicitlyUnwrappedOptionalTypeSyntax(root: data, data: data)
  }
  public static func makeCompositionTypeElement(type: TypeSyntax, ampersand: TokenSyntax?) -> CompositionTypeElementSyntax {
    let layout: [RawSyntax?] = [
      type.data.raw,
      ampersand?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
    ]
    let raw = RawSyntax(kind: SyntaxKind.compositionTypeElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CompositionTypeElementSyntax(root: data, data: data)
  }

  public static func makeBlankCompositionTypeElement() -> CompositionTypeElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .compositionTypeElement,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.unknown("")),
    ], presence: .present))
    return CompositionTypeElementSyntax(root: data, data: data)
  }
  public static func makeCompositionTypeElementList(
    _ elements: [CompositionTypeElementSyntax]) -> CompositionTypeElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.compositionTypeElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CompositionTypeElementListSyntax(root: data, data: data)
  }

  public static func makeBlankCompositionTypeElementList() -> CompositionTypeElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .compositionTypeElementList,
                                         layout: [
    ], presence: .present))
    return CompositionTypeElementListSyntax(root: data, data: data)
  }
  public static func makeCompositionType(elements: CompositionTypeElementListSyntax) -> CompositionTypeSyntax {
    let layout: [RawSyntax?] = [
      elements.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.compositionType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return CompositionTypeSyntax(root: data, data: data)
  }

  public static func makeBlankCompositionType() -> CompositionTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .compositionType,
                                         layout: [
      RawSyntax.missing(SyntaxKind.compositionTypeElementList),
    ], presence: .present))
    return CompositionTypeSyntax(root: data, data: data)
  }
  public static func makeTupleTypeElement(inOut: TokenSyntax?, name: TokenSyntax?, secondName: TokenSyntax?, colon: TokenSyntax?, type: TypeSyntax, ellipsis: TokenSyntax?, initializer: InitializerClauseSyntax?, trailingComma: TokenSyntax?) -> TupleTypeElementSyntax {
    let layout: [RawSyntax?] = [
      inOut?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
      name?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      secondName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      colon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      type.data.raw,
      ellipsis?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
      initializer?.data.raw ?? RawSyntax.missing(SyntaxKind.initializerClause),
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.tupleTypeElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TupleTypeElementSyntax(root: data, data: data)
  }

  public static func makeBlankTupleTypeElement() -> TupleTypeElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tupleTypeElement,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missing(SyntaxKind.initializerClause),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return TupleTypeElementSyntax(root: data, data: data)
  }
  public static func makeTupleTypeElementList(
    _ elements: [TupleTypeElementSyntax]) -> TupleTypeElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.tupleTypeElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TupleTypeElementListSyntax(root: data, data: data)
  }

  public static func makeBlankTupleTypeElementList() -> TupleTypeElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tupleTypeElementList,
                                         layout: [
    ], presence: .present))
    return TupleTypeElementListSyntax(root: data, data: data)
  }
  public static func makeTupleType(leftParen: TokenSyntax, elements: TupleTypeElementListSyntax, rightParen: TokenSyntax) -> TupleTypeSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      elements.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.tupleType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TupleTypeSyntax(root: data, data: data)
  }

  public static func makeBlankTupleType() -> TupleTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tupleType,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.tupleTypeElementList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return TupleTypeSyntax(root: data, data: data)
  }
  public static func makeFunctionType(leftParen: TokenSyntax, arguments: TupleTypeElementListSyntax, rightParen: TokenSyntax, throwsOrRethrowsKeyword: TokenSyntax?, arrow: TokenSyntax, returnType: TypeSyntax) -> FunctionTypeSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      arguments.data.raw,
      rightParen.data.raw,
      throwsOrRethrowsKeyword?.data.raw ?? RawSyntax.missingToken(TokenKind.throwsKeyword),
      arrow.data.raw,
      returnType.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.functionType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return FunctionTypeSyntax(root: data, data: data)
  }

  public static func makeBlankFunctionType() -> FunctionTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .functionType,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.tupleTypeElementList),
      RawSyntax.missingToken(TokenKind.rightParen),
      RawSyntax.missingToken(TokenKind.throwsKeyword),
      RawSyntax.missingToken(TokenKind.arrow),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return FunctionTypeSyntax(root: data, data: data)
  }
  public static func makeAttributedType(specifier: TokenSyntax?, attributes: AttributeListSyntax?, baseType: TypeSyntax) -> AttributedTypeSyntax {
    let layout: [RawSyntax?] = [
      specifier?.data.raw ?? RawSyntax.missingToken(TokenKind.unknown("")),
      attributes?.data.raw ?? RawSyntax.missing(SyntaxKind.attributeList),
      baseType.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.attributedType,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AttributedTypeSyntax(root: data, data: data)
  }

  public static func makeBlankAttributedType() -> AttributedTypeSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .attributedType,
                                         layout: [
      RawSyntax.missingToken(TokenKind.unknown("")),
      RawSyntax.missing(SyntaxKind.attributeList),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return AttributedTypeSyntax(root: data, data: data)
  }
  public static func makeGenericArgumentList(
    _ elements: [GenericArgumentSyntax]) -> GenericArgumentListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.genericArgumentList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericArgumentListSyntax(root: data, data: data)
  }

  public static func makeBlankGenericArgumentList() -> GenericArgumentListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericArgumentList,
                                         layout: [
    ], presence: .present))
    return GenericArgumentListSyntax(root: data, data: data)
  }
  public static func makeGenericArgument(argumentType: TypeSyntax, trailingComma: TokenSyntax?) -> GenericArgumentSyntax {
    let layout: [RawSyntax?] = [
      argumentType.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.genericArgument,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericArgumentSyntax(root: data, data: data)
  }

  public static func makeBlankGenericArgument() -> GenericArgumentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericArgument,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return GenericArgumentSyntax(root: data, data: data)
  }
  public static func makeGenericArgumentClause(leftAngleBracket: TokenSyntax, arguments: GenericArgumentListSyntax, rightAngleBracket: TokenSyntax) -> GenericArgumentClauseSyntax {
    let layout: [RawSyntax?] = [
      leftAngleBracket.data.raw,
      arguments.data.raw,
      rightAngleBracket.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.genericArgumentClause,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return GenericArgumentClauseSyntax(root: data, data: data)
  }

  public static func makeBlankGenericArgumentClause() -> GenericArgumentClauseSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .genericArgumentClause,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftAngle),
      RawSyntax.missing(SyntaxKind.genericArgumentList),
      RawSyntax.missingToken(TokenKind.rightAngle),
    ], presence: .present))
    return GenericArgumentClauseSyntax(root: data, data: data)
  }
  public static func makeTypeAnnotation(colon: TokenSyntax, type: TypeSyntax) -> TypeAnnotationSyntax {
    let layout: [RawSyntax?] = [
      colon.data.raw,
      type.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.typeAnnotation,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TypeAnnotationSyntax(root: data, data: data)
  }

  public static func makeBlankTypeAnnotation() -> TypeAnnotationSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .typeAnnotation,
                                         layout: [
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return TypeAnnotationSyntax(root: data, data: data)
  }
  public static func makeEnumCasePattern(type: TypeSyntax?, period: TokenSyntax, caseName: TokenSyntax, associatedTuple: TuplePatternSyntax?) -> EnumCasePatternSyntax {
    let layout: [RawSyntax?] = [
      type?.data.raw ?? RawSyntax.missing(SyntaxKind.type),
      period.data.raw,
      caseName.data.raw,
      associatedTuple?.data.raw ?? RawSyntax.missing(SyntaxKind.tuplePattern),
    ]
    let raw = RawSyntax(kind: SyntaxKind.enumCasePattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return EnumCasePatternSyntax(root: data, data: data)
  }

  public static func makeBlankEnumCasePattern() -> EnumCasePatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .enumCasePattern,
                                         layout: [
      RawSyntax.missing(SyntaxKind.type),
      RawSyntax.missingToken(TokenKind.period),
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.tuplePattern),
    ], presence: .present))
    return EnumCasePatternSyntax(root: data, data: data)
  }
  public static func makeIsTypePattern(isKeyword: TokenSyntax, type: TypeSyntax) -> IsTypePatternSyntax {
    let layout: [RawSyntax?] = [
      isKeyword.data.raw,
      type.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.isTypePattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IsTypePatternSyntax(root: data, data: data)
  }

  public static func makeBlankIsTypePattern() -> IsTypePatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .isTypePattern,
                                         layout: [
      RawSyntax.missingToken(TokenKind.isKeyword),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return IsTypePatternSyntax(root: data, data: data)
  }
  public static func makeOptionalPattern(subPattern: PatternSyntax, questionMark: TokenSyntax) -> OptionalPatternSyntax {
    let layout: [RawSyntax?] = [
      subPattern.data.raw,
      questionMark.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.optionalPattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return OptionalPatternSyntax(root: data, data: data)
  }

  public static func makeBlankOptionalPattern() -> OptionalPatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .optionalPattern,
                                         layout: [
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missingToken(TokenKind.postfixQuestionMark),
    ], presence: .present))
    return OptionalPatternSyntax(root: data, data: data)
  }
  public static func makeIdentifierPattern(identifier: TokenSyntax) -> IdentifierPatternSyntax {
    let layout: [RawSyntax?] = [
      identifier.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.identifierPattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return IdentifierPatternSyntax(root: data, data: data)
  }

  public static func makeBlankIdentifierPattern() -> IdentifierPatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .identifierPattern,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
    ], presence: .present))
    return IdentifierPatternSyntax(root: data, data: data)
  }
  public static func makeAsTypePattern(pattern: PatternSyntax, asKeyword: TokenSyntax, type: TypeSyntax) -> AsTypePatternSyntax {
    let layout: [RawSyntax?] = [
      pattern.data.raw,
      asKeyword.data.raw,
      type.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.asTypePattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AsTypePatternSyntax(root: data, data: data)
  }

  public static func makeBlankAsTypePattern() -> AsTypePatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .asTypePattern,
                                         layout: [
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missingToken(TokenKind.asKeyword),
      RawSyntax.missing(SyntaxKind.type),
    ], presence: .present))
    return AsTypePatternSyntax(root: data, data: data)
  }
  public static func makeTuplePattern(leftParen: TokenSyntax, elements: TuplePatternElementListSyntax, rightParen: TokenSyntax) -> TuplePatternSyntax {
    let layout: [RawSyntax?] = [
      leftParen.data.raw,
      elements.data.raw,
      rightParen.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.tuplePattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TuplePatternSyntax(root: data, data: data)
  }

  public static func makeBlankTuplePattern() -> TuplePatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tuplePattern,
                                         layout: [
      RawSyntax.missingToken(TokenKind.leftParen),
      RawSyntax.missing(SyntaxKind.tuplePatternElementList),
      RawSyntax.missingToken(TokenKind.rightParen),
    ], presence: .present))
    return TuplePatternSyntax(root: data, data: data)
  }
  public static func makeWildcardPattern(wildcard: TokenSyntax, typeAnnotation: TypeAnnotationSyntax?) -> WildcardPatternSyntax {
    let layout: [RawSyntax?] = [
      wildcard.data.raw,
      typeAnnotation?.data.raw ?? RawSyntax.missing(SyntaxKind.typeAnnotation),
    ]
    let raw = RawSyntax(kind: SyntaxKind.wildcardPattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return WildcardPatternSyntax(root: data, data: data)
  }

  public static func makeBlankWildcardPattern() -> WildcardPatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .wildcardPattern,
                                         layout: [
      RawSyntax.missingToken(TokenKind.wildcardKeyword),
      RawSyntax.missing(SyntaxKind.typeAnnotation),
    ], presence: .present))
    return WildcardPatternSyntax(root: data, data: data)
  }
  public static func makeTuplePatternElement(labelName: TokenSyntax?, labelColon: TokenSyntax?, pattern: PatternSyntax, trailingComma: TokenSyntax?) -> TuplePatternElementSyntax {
    let layout: [RawSyntax?] = [
      labelName?.data.raw ?? RawSyntax.missingToken(TokenKind.identifier("")),
      labelColon?.data.raw ?? RawSyntax.missingToken(TokenKind.colon),
      pattern.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.tuplePatternElement,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TuplePatternElementSyntax(root: data, data: data)
  }

  public static func makeBlankTuplePatternElement() -> TuplePatternElementSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tuplePatternElement,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.pattern),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return TuplePatternElementSyntax(root: data, data: data)
  }
  public static func makeExpressionPattern(expression: ExprSyntax) -> ExpressionPatternSyntax {
    let layout: [RawSyntax?] = [
      expression.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.expressionPattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ExpressionPatternSyntax(root: data, data: data)
  }

  public static func makeBlankExpressionPattern() -> ExpressionPatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .expressionPattern,
                                         layout: [
      RawSyntax.missing(SyntaxKind.expr),
    ], presence: .present))
    return ExpressionPatternSyntax(root: data, data: data)
  }
  public static func makeTuplePatternElementList(
    _ elements: [TuplePatternElementSyntax]) -> TuplePatternElementListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.tuplePatternElementList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return TuplePatternElementListSyntax(root: data, data: data)
  }

  public static func makeBlankTuplePatternElementList() -> TuplePatternElementListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .tuplePatternElementList,
                                         layout: [
    ], presence: .present))
    return TuplePatternElementListSyntax(root: data, data: data)
  }
  public static func makeValueBindingPattern(letOrVarKeyword: TokenSyntax, valuePattern: PatternSyntax) -> ValueBindingPatternSyntax {
    let layout: [RawSyntax?] = [
      letOrVarKeyword.data.raw,
      valuePattern.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.valueBindingPattern,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return ValueBindingPatternSyntax(root: data, data: data)
  }

  public static func makeBlankValueBindingPattern() -> ValueBindingPatternSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .valueBindingPattern,
                                         layout: [
      RawSyntax.missingToken(TokenKind.letKeyword),
      RawSyntax.missing(SyntaxKind.pattern),
    ], presence: .present))
    return ValueBindingPatternSyntax(root: data, data: data)
  }
  public static func makeAvailabilitySpecList(
    _ elements: [AvailabilityArgumentSyntax]) -> AvailabilitySpecListSyntax {
    let raw = RawSyntax(kind: SyntaxKind.availabilitySpecList,
                        layout: elements.map { $0.data.raw },
                        presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AvailabilitySpecListSyntax(root: data, data: data)
  }

  public static func makeBlankAvailabilitySpecList() -> AvailabilitySpecListSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .availabilitySpecList,
                                         layout: [
    ], presence: .present))
    return AvailabilitySpecListSyntax(root: data, data: data)
  }
  public static func makeAvailabilityArgument(entry: Syntax, trailingComma: TokenSyntax?) -> AvailabilityArgumentSyntax {
    let layout: [RawSyntax?] = [
      entry.data.raw,
      trailingComma?.data.raw ?? RawSyntax.missingToken(TokenKind.comma),
    ]
    let raw = RawSyntax(kind: SyntaxKind.availabilityArgument,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AvailabilityArgumentSyntax(root: data, data: data)
  }

  public static func makeBlankAvailabilityArgument() -> AvailabilityArgumentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .availabilityArgument,
                                         layout: [
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.comma),
    ], presence: .present))
    return AvailabilityArgumentSyntax(root: data, data: data)
  }
  public static func makeAvailabilityLabeledArgument(label: TokenSyntax, colon: TokenSyntax, value: Syntax) -> AvailabilityLabeledArgumentSyntax {
    let layout: [RawSyntax?] = [
      label.data.raw,
      colon.data.raw,
      value.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.availabilityLabeledArgument,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AvailabilityLabeledArgumentSyntax(root: data, data: data)
  }

  public static func makeBlankAvailabilityLabeledArgument() -> AvailabilityLabeledArgumentSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .availabilityLabeledArgument,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missingToken(TokenKind.colon),
      RawSyntax.missing(SyntaxKind.unknown),
    ], presence: .present))
    return AvailabilityLabeledArgumentSyntax(root: data, data: data)
  }
  public static func makeAvailabilityVersionRestriction(platform: TokenSyntax, version: VersionTupleSyntax) -> AvailabilityVersionRestrictionSyntax {
    let layout: [RawSyntax?] = [
      platform.data.raw,
      version.data.raw,
    ]
    let raw = RawSyntax(kind: SyntaxKind.availabilityVersionRestriction,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return AvailabilityVersionRestrictionSyntax(root: data, data: data)
  }

  public static func makeBlankAvailabilityVersionRestriction() -> AvailabilityVersionRestrictionSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .availabilityVersionRestriction,
                                         layout: [
      RawSyntax.missingToken(TokenKind.identifier("")),
      RawSyntax.missing(SyntaxKind.versionTuple),
    ], presence: .present))
    return AvailabilityVersionRestrictionSyntax(root: data, data: data)
  }
  public static func makeVersionTuple(majorMinor: Syntax, patchPeriod: TokenSyntax?, patchVersion: TokenSyntax?) -> VersionTupleSyntax {
    let layout: [RawSyntax?] = [
      majorMinor.data.raw,
      patchPeriod?.data.raw ?? RawSyntax.missingToken(TokenKind.period),
      patchVersion?.data.raw ?? RawSyntax.missingToken(TokenKind.integerLiteral("")),
    ]
    let raw = RawSyntax(kind: SyntaxKind.versionTuple,
                        layout: layout, presence: SourcePresence.present)
    let data = SyntaxData(raw: raw)
    return VersionTupleSyntax(root: data, data: data)
  }

  public static func makeBlankVersionTuple() -> VersionTupleSyntax {
    let data = SyntaxData(raw: RawSyntax(kind: .versionTuple,
                                         layout: [
      RawSyntax.missing(SyntaxKind.unknown),
      RawSyntax.missingToken(TokenKind.period),
      RawSyntax.missingToken(TokenKind.integerLiteral("")),
    ], presence: .present))
    return VersionTupleSyntax(root: data, data: data)
  }

/// MARK: Token Creation APIs

  public static func makeAssociatedtypeKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.associatedtypeKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeClassKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.classKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeDeinitKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.deinitKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeEnumKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.enumKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeExtensionKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.extensionKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeFuncKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.funcKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeImportKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.importKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeInitKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.initKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeInoutKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.inoutKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeLetKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.letKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeOperatorKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.operatorKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePrecedencegroupKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.precedencegroupKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeProtocolKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.protocolKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeStructKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.structKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeSubscriptKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.subscriptKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeTypealiasKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.typealiasKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeVarKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.varKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeFileprivateKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.fileprivateKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeInternalKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.internalKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePrivateKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.privateKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePublicKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.publicKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeStaticKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.staticKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeDeferKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.deferKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeIfKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.ifKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeGuardKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.guardKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeDoKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.doKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeRepeatKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.repeatKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeElseKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.elseKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeForKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.forKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeInKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.inKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeWhileKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.whileKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeReturnKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.returnKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeBreakKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.breakKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeContinueKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.continueKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeFallthroughKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.fallthroughKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeSwitchKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.switchKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeCaseKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.caseKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeDefaultKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.defaultKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeWhereKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.whereKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeCatchKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.catchKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeThrowKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.throwKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeAsKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.asKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeAnyKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.anyKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeFalseKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.falseKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeIsKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.isKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeNilKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.nilKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeRethrowsKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.rethrowsKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeSuperKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.superKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeSelfKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.selfKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeCapitalSelfKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.capitalSelfKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeTrueKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.trueKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeTryKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.tryKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeThrowsKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.throwsKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func make__FILE__Keyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.__file__Keyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func make__LINE__Keyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.__line__Keyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func make__COLUMN__Keyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.__column__Keyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func make__FUNCTION__Keyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.__function__Keyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func make__DSO_HANDLE__Keyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.__dso_handle__Keyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeWildcardKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.wildcardKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeLeftParenToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.leftParen, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeRightParenToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.rightParen, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeLeftBraceToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.leftBrace, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeRightBraceToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.rightBrace, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeLeftSquareBracketToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.leftSquareBracket, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeRightSquareBracketToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.rightSquareBracket, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeLeftAngleToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.leftAngle, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeRightAngleToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.rightAngle, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePeriodToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.period, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePrefixPeriodToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.prefixPeriod, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeCommaToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.comma, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeColonToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.colon, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeSemicolonToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.semicolon, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeEqualToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.equal, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeAtSignToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.atSign, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.pound, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePrefixAmpersandToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.prefixAmpersand, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeArrowToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.arrow, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeBacktickToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.backtick, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeBackslashToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.backslash, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeExclamationMarkToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.exclamationMark, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePostfixQuestionMarkToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.postfixQuestionMark, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeInfixQuestionMarkToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.infixQuestionMark, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeStringQuoteToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.stringQuote, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeMultilineStringQuoteToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.multilineStringQuote, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundKeyPathKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundKeyPathKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundLineKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundLineKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundSelectorKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundSelectorKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundFileKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundFileKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundColumnKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundColumnKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundFunctionKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundFunctionKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundDsohandleKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundDsohandleKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundAssertKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundAssertKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundSourceLocationKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundSourceLocationKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundWarningKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundWarningKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundErrorKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundErrorKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundIfKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundIfKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundElseKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundElseKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundElseifKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundElseifKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundEndifKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundEndifKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundAvailableKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundAvailableKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundFileLiteralKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundFileLiteralKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundImageLiteralKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundImageLiteralKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePoundColorLiteralKeyword(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.poundColorLiteralKeyword, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeIntegerLiteral(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.integerLiteral(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeFloatingLiteral(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.floatingLiteral(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeStringLiteral(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.stringLiteral(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeUnknown(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.unknown(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeIdentifier(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.identifier(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeUnspacedBinaryOperator(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.unspacedBinaryOperator(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeSpacedBinaryOperator(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.spacedBinaryOperator(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePostfixOperator(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.postfixOperator(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makePrefixOperator(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.prefixOperator(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeDollarIdentifier(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.dollarIdentifier(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeContextualKeyword(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.contextualKeyword(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeStringSegment(_ text: String,
    leadingTrivia: Trivia = [], trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.stringSegment(text), presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeStringInterpolationAnchorToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.stringInterpolationAnchor, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }
  public static func makeYieldToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.yield, presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }

/// MARK: Convenience APIs

  public static func makeVoidTupleType() -> TupleTypeSyntax {
    return makeTupleType(leftParen: makeLeftParenToken(),
                         elements: makeBlankTupleTypeElementList(),
                         rightParen: makeRightParenToken())
  }

  public static func makeTupleTypeElement(name: TokenSyntax?,
    colon: TokenSyntax?, type: TypeSyntax,
    trailingComma: TokenSyntax?) -> TupleTypeElementSyntax {
    return makeTupleTypeElement(inOut: nil, name: name, secondName: nil,
                                colon: colon, type: type, ellipsis: nil,
                                initializer: nil, trailingComma: trailingComma)
  }

  public static func makeTupleTypeElement(type: TypeSyntax,
    trailingComma: TokenSyntax?) -> TupleTypeElementSyntax  {
    return makeTupleTypeElement(name: nil, colon: nil, 
                                type: type, trailingComma: trailingComma)
  }

  public static func makeGenericParameter(name: TokenSyntax,
      trailingComma: TokenSyntax) -> GenericParameterSyntax {
    return makeGenericParameter(attributes: nil, name: name, colon: nil,
                                inheritedType: nil,
                                trailingComma: trailingComma)
  }

  public static func makeTypeIdentifier(_ name: String,
    leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TypeSyntax {
    let identifier = makeIdentifier(name, leadingTrivia: leadingTrivia, 
                                    trailingTrivia: trailingTrivia)
    return makeSimpleTypeIdentifier(name: identifier,
                                    genericArgumentClause: nil)
  }

  public static func makeAnyTypeIdentifier(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TypeSyntax {
    return makeTypeIdentifier("Any", leadingTrivia: leadingTrivia, 
                              trailingTrivia: trailingTrivia)
  }

  public static func makeSelfTypeIdentifier(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TypeSyntax {
    return makeTypeIdentifier("Self", leadingTrivia: leadingTrivia, 
                              trailingTrivia: trailingTrivia)
  }

  public static func makeTypeToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeIdentifier("Type", leadingTrivia: leadingTrivia, 
                          trailingTrivia: trailingTrivia)
  }

  public static func makeProtocolToken(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeIdentifier("Protocol", leadingTrivia: leadingTrivia,
                          trailingTrivia: trailingTrivia)
  }

  public static func makeEqualityOperator(leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> TokenSyntax {
    return makeToken(.spacedBinaryOperator("=="),
                     presence: .present,
                     leadingTrivia: leadingTrivia,
                     trailingTrivia: trailingTrivia)
  }

  public static func makeStringLiteralExpr(_ text: String,
    leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> StringLiteralExprSyntax {
    let literal = makeStringLiteral("\"\(text)\"", 
                                    leadingTrivia: leadingTrivia,
                                    trailingTrivia: trailingTrivia)
    return makeStringLiteralExpr(stringLiteral: literal)
  }

  public static func makeVariableExpr(_ text: String,
    leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = []) -> IdentifierExprSyntax {
    let string = makeIdentifier(text,
      leadingTrivia: leadingTrivia, trailingTrivia: trailingTrivia)
    return makeIdentifierExpr(identifier: string,
                              declNameArguments: nil)
  }
}
