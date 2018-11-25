//// Automatically Generated From SyntaxClassifier.swift.gyb.
//// Do Not Edit Directly!
//===------------ SyntaxClassifier.swift.gyb - Syntax Collection ----------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2018 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

public enum SyntaxClassification {
  /// The token should not receive syntax coloring. 
  case none
  /// A Swift keyword, including contextual keywords. 
  case keyword
  /// A generic identifier. 
  case identifier
  /// An identifier referring to a type. 
  case typeIdentifier
  /// An identifier starting with `$` like `$0`. 
  case dollarIdentifier
  /// An integer literal. 
  case integerLiteral
  /// A floating point literal. 
  case floatingLiteral
  /// A string literal including multiline string literals. 
  case stringLiteral
  /// The opening and closing paranthesis of string interpolation. 
  case stringInterpolationAnchor
  /// A `#` keyword like `#warning`. 
  case poundDirectiveKeyword
  /// A build configuration directive like `#if`, `#elseif`, `#else`. 
  case buildConfigId
  /// An attribute starting with an `@`. 
  case attribute
  /// An image, color, etc. literal. 
  case objectLiteral
  /// An editor placeholder of the form `<#content#>` 
  case editorPlaceholder
  /// A line comment starting with `//`. 
  case lineComment
  /// A doc line comment starting with `///`. 
  case docLineComment
  /// A block comment starting with `/**` and ending with `*/. 
  case blockComment
  /// A doc block comment starting with `/**` and ending with `*/. 
  case docBlockComment
}

fileprivate class _SyntaxClassifier: SyntaxVisitor {

  /// Don't classify nodes with these IDs or any of their children
  var skipNodeIds: Set<SyntaxNodeId> = []

  /// The top of the `contextStack` determines the classification for all tokens
  /// encountered that do not have a native classification. If `force` is `true`
  /// the top of the stack also determines the classification of tokens with a
  /// native classification
  private var contextStack: [(classification: SyntaxClassification, force: Bool)] = 
      [(classification: .none, force: false)]

  /// The classifications that have determined so far are collected in this
  /// dictionary
  var classifications: [TokenSyntax: SyntaxClassification] = [:]

  private func visit(
    _ node: Syntax, 
    classification: SyntaxClassification, 
    force: Bool = false
  ) {
    contextStack.append((classification: classification, force: force))
    node.walk(self)
    contextStack.removeLast()
  }

  private func getContextFreeClassificationForTokenKind(_ tokenKind: TokenKind) 
      -> SyntaxClassification? {
    switch (tokenKind) {
    case .associatedtypeKeyword:
      return SyntaxClassification.keyword
    case .classKeyword:
      return SyntaxClassification.keyword
    case .deinitKeyword:
      return SyntaxClassification.keyword
    case .enumKeyword:
      return SyntaxClassification.keyword
    case .extensionKeyword:
      return SyntaxClassification.keyword
    case .funcKeyword:
      return SyntaxClassification.keyword
    case .importKeyword:
      return SyntaxClassification.keyword
    case .initKeyword:
      return SyntaxClassification.keyword
    case .inoutKeyword:
      return SyntaxClassification.keyword
    case .letKeyword:
      return SyntaxClassification.keyword
    case .operatorKeyword:
      return SyntaxClassification.keyword
    case .precedencegroupKeyword:
      return SyntaxClassification.keyword
    case .protocolKeyword:
      return SyntaxClassification.keyword
    case .structKeyword:
      return SyntaxClassification.keyword
    case .subscriptKeyword:
      return SyntaxClassification.keyword
    case .typealiasKeyword:
      return SyntaxClassification.keyword
    case .varKeyword:
      return SyntaxClassification.keyword
    case .fileprivateKeyword:
      return SyntaxClassification.keyword
    case .internalKeyword:
      return SyntaxClassification.keyword
    case .privateKeyword:
      return SyntaxClassification.keyword
    case .publicKeyword:
      return SyntaxClassification.keyword
    case .staticKeyword:
      return SyntaxClassification.keyword
    case .deferKeyword:
      return SyntaxClassification.keyword
    case .ifKeyword:
      return SyntaxClassification.keyword
    case .guardKeyword:
      return SyntaxClassification.keyword
    case .doKeyword:
      return SyntaxClassification.keyword
    case .repeatKeyword:
      return SyntaxClassification.keyword
    case .elseKeyword:
      return SyntaxClassification.keyword
    case .forKeyword:
      return SyntaxClassification.keyword
    case .inKeyword:
      return SyntaxClassification.keyword
    case .whileKeyword:
      return SyntaxClassification.keyword
    case .returnKeyword:
      return SyntaxClassification.keyword
    case .breakKeyword:
      return SyntaxClassification.keyword
    case .continueKeyword:
      return SyntaxClassification.keyword
    case .fallthroughKeyword:
      return SyntaxClassification.keyword
    case .switchKeyword:
      return SyntaxClassification.keyword
    case .caseKeyword:
      return SyntaxClassification.keyword
    case .defaultKeyword:
      return SyntaxClassification.keyword
    case .whereKeyword:
      return SyntaxClassification.keyword
    case .catchKeyword:
      return SyntaxClassification.keyword
    case .throwKeyword:
      return SyntaxClassification.keyword
    case .asKeyword:
      return SyntaxClassification.keyword
    case .anyKeyword:
      return SyntaxClassification.keyword
    case .falseKeyword:
      return SyntaxClassification.keyword
    case .isKeyword:
      return SyntaxClassification.keyword
    case .nilKeyword:
      return SyntaxClassification.keyword
    case .rethrowsKeyword:
      return SyntaxClassification.keyword
    case .superKeyword:
      return SyntaxClassification.keyword
    case .selfKeyword:
      return SyntaxClassification.keyword
    case .capitalSelfKeyword:
      return SyntaxClassification.keyword
    case .trueKeyword:
      return SyntaxClassification.keyword
    case .tryKeyword:
      return SyntaxClassification.keyword
    case .throwsKeyword:
      return SyntaxClassification.keyword
    case .__file__Keyword:
      return SyntaxClassification.keyword
    case .__line__Keyword:
      return SyntaxClassification.keyword
    case .__column__Keyword:
      return SyntaxClassification.keyword
    case .__function__Keyword:
      return SyntaxClassification.keyword
    case .__dso_handle__Keyword:
      return SyntaxClassification.keyword
    case .wildcardKeyword:
      return SyntaxClassification.keyword
    case .leftParen:
      return SyntaxClassification.none
    case .rightParen:
      return SyntaxClassification.none
    case .leftBrace:
      return SyntaxClassification.none
    case .rightBrace:
      return SyntaxClassification.none
    case .leftSquareBracket:
      return SyntaxClassification.none
    case .rightSquareBracket:
      return SyntaxClassification.none
    case .leftAngle:
      return SyntaxClassification.none
    case .rightAngle:
      return SyntaxClassification.none
    case .period:
      return SyntaxClassification.none
    case .prefixPeriod:
      return SyntaxClassification.none
    case .comma:
      return SyntaxClassification.none
    case .colon:
      return SyntaxClassification.none
    case .semicolon:
      return SyntaxClassification.none
    case .equal:
      return SyntaxClassification.none
    case .atSign:
      return SyntaxClassification.attribute
    case .pound:
      return SyntaxClassification.none
    case .prefixAmpersand:
      return SyntaxClassification.none
    case .arrow:
      return SyntaxClassification.none
    case .backtick:
      return SyntaxClassification.none
    case .backslash:
      return SyntaxClassification.none
    case .exclamationMark:
      return SyntaxClassification.none
    case .postfixQuestionMark:
      return SyntaxClassification.none
    case .infixQuestionMark:
      return SyntaxClassification.none
    case .stringQuote:
      return SyntaxClassification.stringLiteral
    case .multilineStringQuote:
      return SyntaxClassification.stringLiteral
    case .poundKeyPathKeyword:
      return SyntaxClassification.keyword
    case .poundLineKeyword:
      return SyntaxClassification.keyword
    case .poundSelectorKeyword:
      return SyntaxClassification.keyword
    case .poundFileKeyword:
      return SyntaxClassification.keyword
    case .poundColumnKeyword:
      return SyntaxClassification.keyword
    case .poundFunctionKeyword:
      return SyntaxClassification.keyword
    case .poundDsohandleKeyword:
      return SyntaxClassification.keyword
    case .poundAssertKeyword:
      return SyntaxClassification.keyword
    case .poundSourceLocationKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundWarningKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundErrorKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundIfKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundElseKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundElseifKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundEndifKeyword:
      return SyntaxClassification.poundDirectiveKeyword
    case .poundAvailableKeyword:
      return SyntaxClassification.keyword
    case .poundFileLiteralKeyword:
      return SyntaxClassification.objectLiteral
    case .poundImageLiteralKeyword:
      return SyntaxClassification.objectLiteral
    case .poundColorLiteralKeyword:
      return SyntaxClassification.objectLiteral
    case .integerLiteral:
      return SyntaxClassification.integerLiteral
    case .floatingLiteral:
      return SyntaxClassification.floatingLiteral
    case .stringLiteral:
      return SyntaxClassification.stringLiteral
    case .unknown:
      return SyntaxClassification.none
    case .identifier:
      return nil
    case .unspacedBinaryOperator:
      return SyntaxClassification.none
    case .spacedBinaryOperator:
      return SyntaxClassification.none
    case .postfixOperator:
      return SyntaxClassification.none
    case .prefixOperator:
      return SyntaxClassification.none
    case .dollarIdentifier:
      return SyntaxClassification.dollarIdentifier
    case .contextualKeyword:
      return SyntaxClassification.keyword
    case .stringSegment:
      return SyntaxClassification.stringLiteral
    case .stringInterpolationAnchor:
      return SyntaxClassification.stringInterpolationAnchor
    case .yield:
      return SyntaxClassification.none
    case .eof:
      return SyntaxClassification.none
    }
  }

  override func visit(_ token: TokenSyntax) -> SyntaxVisitorContinueKind {
    assert(token.isPresent)
    // FIXME: We need to come up with some way in which the SyntaxClassifier can
    // classify trivia (i.e. comments). In particular we need to be able to
    // look into the comments to find things like URLs or keywords like MARK.
    var classification = contextStack.last!.classification
    if !contextStack.last!.force {
      if let contextFreeClassification = 
          getContextFreeClassificationForTokenKind(token.tokenKind) {
        classification = contextFreeClassification
      }
      if case .unknown = token.tokenKind, token.text.starts(with: "\"") {
        classification = .stringLiteral
      } else if case .identifier = token.tokenKind, 
          token.text.starts(with: "<#") && token.text.hasSuffix("#>") {
        classification = .editorPlaceholder
      }
    }
    assert(classifications[token] == nil,
           "\(token) has already been classified")
    classifications[token] = classification
    return .skipChildren
  }

  override func visit(_ node: UnknownDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: UnknownExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: UnknownStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: UnknownTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: UnknownPatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: CodeBlockItemSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.item.walk(self)
    if let semicolon = node.semicolon { 
      semicolon.walk(self)
    }
    if let errorTokens = node.errorTokens { 
      errorTokens.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: CodeBlockItemListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: CodeBlockSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftBrace.walk(self)
    node.statements.walk(self)
    node.rightBrace.walk(self)
    return .skipChildren
  }
  override func visit(_ node: InOutExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.ampersand.walk(self)
    node.expression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundColumnExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundColumn.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FunctionCallArgumentListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: TupleElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ArrayElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: DictionaryElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: StringInterpolationSegmentsSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: TryExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.tryKeyword.walk(self)
    if let questionOrExclamationMark = node.questionOrExclamationMark { 
      questionOrExclamationMark.walk(self)
    }
    node.expression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DeclNameArgumentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.name.walk(self)
    node.colon.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DeclNameArgumentListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: DeclNameArgumentsSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.arguments.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: IdentifierExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.identifier.walk(self)
    if let declNameArguments = node.declNameArguments { 
      declNameArguments.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: SuperRefExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.superKeyword.walk(self)
    return .skipChildren
  }
  override func visit(_ node: NilLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.nilKeyword.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DiscardAssignmentExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.wildcard.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AssignmentExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.assignToken.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SequenceExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.elements.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ExprListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: PoundLineExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundLine.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundFileExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundFile.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundFunctionExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundFunction.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundDsohandleExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundDsohandle.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SymbolicReferenceExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.identifier.walk(self)
    if let genericArgumentClause = node.genericArgumentClause { 
      genericArgumentClause.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: PrefixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let operatorToken = node.operatorToken { 
      operatorToken.walk(self)
    }
    node.postfixExpression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: BinaryOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.operatorToken.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ArrowExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let throwsToken = node.throwsToken { 
      throwsToken.walk(self)
    }
    node.arrowToken.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FloatLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.floatingDigits.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TupleExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.elementList.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ArrayExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftSquare.walk(self)
    node.elements.walk(self)
    node.rightSquare.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DictionaryExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftSquare.walk(self)
    node.content.walk(self)
    node.rightSquare.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ImplicitMemberExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.dot.walk(self)
    node.name.walk(self)
    if let declNameArguments = node.declNameArguments { 
      declNameArguments.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: FunctionCallArgumentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let label = node.label { 
      label.walk(self)
    }
    if let colon = node.colon { 
      colon.walk(self)
    }
    node.expression.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: TupleElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let label = node.label { 
      label.walk(self)
    }
    if let colon = node.colon { 
      colon.walk(self)
    }
    node.expression.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ArrayElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: DictionaryElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.keyExpression.walk(self)
    node.colon.walk(self)
    node.valueExpression.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.digits.walk(self)
    return .skipChildren
  }
  override func visit(_ node: StringLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.stringLiteral.walk(self)
    return .skipChildren
  }
  override func visit(_ node: BooleanLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.booleanLiteral.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TernaryExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.conditionExpression.walk(self)
    node.questionMark.walk(self)
    node.firstChoice.walk(self)
    node.colonMark.walk(self)
    node.secondChoice.walk(self)
    return .skipChildren
  }
  override func visit(_ node: MemberAccessExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let base = node.base { 
      base.walk(self)
    }
    node.dot.walk(self)
    node.name.walk(self)
    if let declNameArguments = node.declNameArguments { 
      declNameArguments.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: DotSelfExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    node.dot.walk(self)
    node.selfKeyword.walk(self)
    return .skipChildren
  }
  override func visit(_ node: IsExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.isTok.walk(self)
    node.typeName.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AsExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.asTok.walk(self)
    if let questionOrExclamationMark = node.questionOrExclamationMark { 
      questionOrExclamationMark.walk(self)
    }
    node.typeName.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TypeExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.type.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ClosureCaptureItemSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let specifier = node.specifier { 
      specifier.walk(self)
    }
    if let name = node.name { 
      name.walk(self)
    }
    if let assignToken = node.assignToken { 
      assignToken.walk(self)
    }
    node.expression.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ClosureCaptureItemListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ClosureCaptureSignatureSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftSquare.walk(self)
    if let items = node.items { 
      items.walk(self)
    }
    node.rightSquare.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ClosureParamSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.name.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ClosureParamListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ClosureSignatureSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let capture = node.capture { 
      capture.walk(self)
    }
    if let input = node.input { 
      input.walk(self)
    }
    if let throwsTok = node.throwsTok { 
      throwsTok.walk(self)
    }
    if let output = node.output { 
      output.walk(self)
    }
    node.inTok.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ClosureExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftBrace.walk(self)
    if let signature = node.signature { 
      signature.walk(self)
    }
    node.statements.walk(self)
    node.rightBrace.walk(self)
    return .skipChildren
  }
  override func visit(_ node: UnresolvedPatternExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.pattern.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.calledExpression.walk(self)
    if let leftParen = node.leftParen { 
      leftParen.walk(self)
    }
    node.argumentList.walk(self)
    if let rightParen = node.rightParen { 
      rightParen.walk(self)
    }
    if let trailingClosure = node.trailingClosure { 
      trailingClosure.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: SubscriptExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.calledExpression.walk(self)
    node.leftBracket.walk(self)
    node.argumentList.walk(self)
    node.rightBracket.walk(self)
    if let trailingClosure = node.trailingClosure { 
      trailingClosure.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: OptionalChainingExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    node.questionMark.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ForcedValueExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    node.exclamationMark.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PostfixUnaryExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    node.operatorToken.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SpecializeExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    node.genericArgumentClause.walk(self)
    return .skipChildren
  }
  override func visit(_ node: StringSegmentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.content.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ExpressionSegmentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.backslash.walk(self)
    visit(node.leftParen, 
          classification: .stringInterpolationAnchor, 
          force: true)
    node.expression.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: StringInterpolationExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.openQuote.walk(self)
    node.segments.walk(self)
    node.closeQuote.walk(self)
    return .skipChildren
  }
  override func visit(_ node: KeyPathExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.backslash.walk(self)
    if let rootExpr = node.rootExpr { 
      rootExpr.walk(self)
    }
    node.expression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: KeyPathBaseExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.period.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ObjcNamePieceSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.name.walk(self)
    if let dot = node.dot { 
      dot.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ObjcNameSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ObjcKeyPathExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.keyPath.walk(self)
    node.leftParen.walk(self)
    node.name.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ObjcSelectorExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundSelector.walk(self)
    node.leftParen.walk(self)
    if let kind = node.kind { 
      kind.walk(self)
    }
    if let colon = node.colon { 
      colon.walk(self)
    }
    node.name.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: EditorPlaceholderExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.identifier.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ObjectLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.identifier.walk(self)
    node.leftParen.walk(self)
    node.arguments.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TypeInitializerClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.equal.walk(self)
    node.value.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TypealiasDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.typealiasKeyword.walk(self)
    node.identifier.walk(self)
    if let genericParameterClause = node.genericParameterClause { 
      genericParameterClause.walk(self)
    }
    if let initializer = node.initializer { 
      initializer.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AssociatedtypeDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.associatedtypeKeyword.walk(self)
    node.identifier.walk(self)
    if let inheritanceClause = node.inheritanceClause { 
      inheritanceClause.walk(self)
    }
    if let initializer = node.initializer { 
      initializer.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: FunctionParameterListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ParameterClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.parameterList.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ReturnClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.arrow.walk(self)
    node.returnType.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FunctionSignatureSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.input.walk(self)
    if let throwsOrRethrowsKeyword = node.throwsOrRethrowsKeyword { 
      throwsOrRethrowsKeyword.walk(self)
    }
    if let output = node.output { 
      output.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: IfConfigClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    visit(node.poundKeyword, 
          classification: .buildConfigId, 
          force: false)
    if let condition = node.condition { 
      visit(condition, 
            classification: .buildConfigId, 
            force: false)
    }
    node.elements.walk(self)
    return .skipChildren
  }
  override func visit(_ node: IfConfigClauseListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: IfConfigDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.clauses.walk(self)
    visit(node.poundEndif, 
          classification: .buildConfigId, 
          force: false)
    return .skipChildren
  }
  override func visit(_ node: PoundErrorDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundError.walk(self)
    node.leftParen.walk(self)
    node.message.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundWarningDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundWarning.walk(self)
    node.leftParen.walk(self)
    node.message.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundSourceLocationSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundSourceLocation.walk(self)
    node.leftParen.walk(self)
    if let args = node.args { 
      args.walk(self)
    }
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundSourceLocationArgsSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.fileArgLabel.walk(self)
    node.fileArgColon.walk(self)
    node.fileName.walk(self)
    node.comma.walk(self)
    node.lineArgLabel.walk(self)
    node.lineArgColon.walk(self)
    node.lineNumber.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DeclModifierSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    visit(node.name, 
          classification: .attribute, 
          force: false)
    if let detailLeftParen = node.detailLeftParen { 
      detailLeftParen.walk(self)
    }
    if let detail = node.detail { 
      detail.walk(self)
    }
    if let detailRightParen = node.detailRightParen { 
      detailRightParen.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: InheritedTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.typeName.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: InheritedTypeListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: TypeInheritanceClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.colon.walk(self)
    node.inheritedTypeCollection.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ClassDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.classKeyword.walk(self)
    node.identifier.walk(self)
    if let genericParameterClause = node.genericParameterClause { 
      genericParameterClause.walk(self)
    }
    if let inheritanceClause = node.inheritanceClause { 
      inheritanceClause.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    node.members.walk(self)
    return .skipChildren
  }
  override func visit(_ node: StructDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.structKeyword.walk(self)
    node.identifier.walk(self)
    if let genericParameterClause = node.genericParameterClause { 
      genericParameterClause.walk(self)
    }
    if let inheritanceClause = node.inheritanceClause { 
      inheritanceClause.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    node.members.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ProtocolDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.protocolKeyword.walk(self)
    node.identifier.walk(self)
    if let inheritanceClause = node.inheritanceClause { 
      inheritanceClause.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    node.members.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ExtensionDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.extensionKeyword.walk(self)
    node.extendedType.walk(self)
    if let inheritanceClause = node.inheritanceClause { 
      inheritanceClause.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    node.members.walk(self)
    return .skipChildren
  }
  override func visit(_ node: MemberDeclBlockSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftBrace.walk(self)
    node.members.walk(self)
    node.rightBrace.walk(self)
    return .skipChildren
  }
  override func visit(_ node: MemberDeclListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: MemberDeclListItemSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.decl.walk(self)
    if let semicolon = node.semicolon { 
      semicolon.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: SourceFileSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.statements.walk(self)
    node.eofToken.walk(self)
    return .skipChildren
  }
  override func visit(_ node: InitializerClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.equal.walk(self)
    node.value.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FunctionParameterSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let firstName = node.firstName { 
      firstName.walk(self)
    }
    if let secondName = node.secondName { 
      secondName.walk(self)
    }
    if let colon = node.colon { 
      colon.walk(self)
    }
    if let type = node.type { 
      type.walk(self)
    }
    if let ellipsis = node.ellipsis { 
      ellipsis.walk(self)
    }
    if let defaultArgument = node.defaultArgument { 
      defaultArgument.walk(self)
    }
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ModifierListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: FunctionDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.funcKeyword.walk(self)
    node.identifier.walk(self)
    if let genericParameterClause = node.genericParameterClause { 
      genericParameterClause.walk(self)
    }
    node.signature.walk(self)
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    if let body = node.body { 
      body.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: InitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.initKeyword.walk(self)
    if let optionalMark = node.optionalMark { 
      optionalMark.walk(self)
    }
    if let genericParameterClause = node.genericParameterClause { 
      genericParameterClause.walk(self)
    }
    node.parameters.walk(self)
    if let throwsOrRethrowsKeyword = node.throwsOrRethrowsKeyword { 
      throwsOrRethrowsKeyword.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    if let body = node.body { 
      body.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: DeinitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.deinitKeyword.walk(self)
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SubscriptDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.subscriptKeyword.walk(self)
    if let genericParameterClause = node.genericParameterClause { 
      genericParameterClause.walk(self)
    }
    node.indices.walk(self)
    node.result.walk(self)
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    if let accessor = node.accessor { 
      accessor.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AccessLevelModifierSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.name.walk(self)
    if let leftParen = node.leftParen { 
      leftParen.walk(self)
    }
    if let modifier = node.modifier { 
      modifier.walk(self)
    }
    if let rightParen = node.rightParen { 
      rightParen.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AccessPathComponentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.name.walk(self)
    if let trailingDot = node.trailingDot { 
      trailingDot.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AccessPathSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ImportDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.importTok.walk(self)
    if let importKind = node.importKind { 
      importKind.walk(self)
    }
    node.path.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AccessorParameterSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.name.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AccessorDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifier = node.modifier { 
      modifier.walk(self)
    }
    node.accessorKind.walk(self)
    if let parameter = node.parameter { 
      parameter.walk(self)
    }
    if let body = node.body { 
      body.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AccessorListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: AccessorBlockSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftBrace.walk(self)
    node.accessors.walk(self)
    node.rightBrace.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PatternBindingSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.pattern.walk(self)
    if let typeAnnotation = node.typeAnnotation { 
      typeAnnotation.walk(self)
    }
    if let initializer = node.initializer { 
      initializer.walk(self)
    }
    if let accessor = node.accessor { 
      accessor.walk(self)
    }
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: PatternBindingListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.letOrVarKeyword.walk(self)
    node.bindings.walk(self)
    return .skipChildren
  }
  override func visit(_ node: EnumCaseElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.identifier.walk(self)
    if let associatedValue = node.associatedValue { 
      associatedValue.walk(self)
    }
    if let rawValue = node.rawValue { 
      rawValue.walk(self)
    }
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: EnumCaseElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: EnumCaseDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.caseKeyword.walk(self)
    node.elements.walk(self)
    return .skipChildren
  }
  override func visit(_ node: EnumDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.enumKeyword.walk(self)
    node.identifier.walk(self)
    if let genericParameters = node.genericParameters { 
      genericParameters.walk(self)
    }
    if let inheritanceClause = node.inheritanceClause { 
      inheritanceClause.walk(self)
    }
    if let genericWhereClause = node.genericWhereClause { 
      genericWhereClause.walk(self)
    }
    node.members.walk(self)
    return .skipChildren
  }
  override func visit(_ node: OperatorDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      visit(modifiers, 
            classification: .attribute, 
            force: false)
    }
    node.operatorKeyword.walk(self)
    node.identifier.walk(self)
    if let operatorPrecedenceAndTypes = node.operatorPrecedenceAndTypes { 
      operatorPrecedenceAndTypes.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: IdentifierListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: OperatorPrecedenceAndTypesSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.colon.walk(self)
    node.precedenceGroupAndDesignatedTypes.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PrecedenceGroupDeclSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    if let modifiers = node.modifiers { 
      modifiers.walk(self)
    }
    node.precedencegroupKeyword.walk(self)
    node.identifier.walk(self)
    node.leftBrace.walk(self)
    node.groupAttributes.walk(self)
    node.rightBrace.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PrecedenceGroupAttributeListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: PrecedenceGroupRelationSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    visit(node.higherThanOrLowerThan, 
          classification: .keyword, 
          force: false)
    node.colon.walk(self)
    node.otherNames.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PrecedenceGroupNameListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: PrecedenceGroupNameElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.name.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: PrecedenceGroupAssignmentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.assignmentKeyword.walk(self)
    node.colon.walk(self)
    node.flag.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PrecedenceGroupAssociativitySyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    visit(node.associativityKeyword, 
          classification: .keyword, 
          force: false)
    node.colon.walk(self)
    node.value.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TokenListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: NonEmptyTokenListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: AttributeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.atSignToken.walk(self)
    visit(node.attributeName, 
          classification: .attribute, 
          force: false)
    if let leftParen = node.leftParen { 
      leftParen.walk(self)
    }
    if let argument = node.argument { 
      argument.walk(self)
    }
    if let rightParen = node.rightParen { 
      rightParen.walk(self)
    }
    if let tokenList = node.tokenList { 
      tokenList.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AttributeListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: SpecializeAttributeSpecListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: LabeledSpecializeEntrySyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.label.walk(self)
    node.colon.walk(self)
    node.value.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: NamedAttributeStringArgumentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.nameTok.walk(self)
    node.colon.walk(self)
    node.stringOrDeclname.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DeclNameSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.declBaseName.walk(self)
    if let declNameArguments = node.declNameArguments { 
      declNameArguments.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ImplementsAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.type.walk(self)
    node.comma.walk(self)
    node.declBaseName.walk(self)
    if let declNameArguments = node.declNameArguments { 
      declNameArguments.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ObjCSelectorPieceSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let name = node.name { 
      name.walk(self)
    }
    if let colon = node.colon { 
      colon.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ObjCSelectorSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ContinueStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.continueKeyword.walk(self)
    if let label = node.label { 
      label.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: WhileStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.whileKeyword.walk(self)
    node.conditions.walk(self)
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DeferStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.deferKeyword.walk(self)
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ExpressionStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SwitchCaseListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: RepeatWhileStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.repeatKeyword.walk(self)
    node.body.walk(self)
    node.whileKeyword.walk(self)
    node.condition.walk(self)
    return .skipChildren
  }
  override func visit(_ node: GuardStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.guardKeyword.walk(self)
    node.conditions.walk(self)
    node.elseKeyword.walk(self)
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: WhereClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.whereKeyword.walk(self)
    node.guardResult.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ForInStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.forKeyword.walk(self)
    if let caseKeyword = node.caseKeyword { 
      caseKeyword.walk(self)
    }
    node.pattern.walk(self)
    if let typeAnnotation = node.typeAnnotation { 
      typeAnnotation.walk(self)
    }
    node.inKeyword.walk(self)
    node.sequenceExpr.walk(self)
    if let whereClause = node.whereClause { 
      whereClause.walk(self)
    }
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SwitchStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.switchKeyword.walk(self)
    node.expression.walk(self)
    node.leftBrace.walk(self)
    node.cases.walk(self)
    node.rightBrace.walk(self)
    return .skipChildren
  }
  override func visit(_ node: CatchClauseListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: DoStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.doKeyword.walk(self)
    node.body.walk(self)
    if let catchClauses = node.catchClauses { 
      catchClauses.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ReturnStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.returnKeyword.walk(self)
    if let expression = node.expression { 
      expression.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: YieldStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.yieldKeyword.walk(self)
    node.yields.walk(self)
    return .skipChildren
  }
  override func visit(_ node: YieldListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.elementList.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FallthroughStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.fallthroughKeyword.walk(self)
    return .skipChildren
  }
  override func visit(_ node: BreakStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.breakKeyword.walk(self)
    if let label = node.label { 
      label.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: CaseItemListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ConditionElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.condition.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AvailabilityConditionSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundAvailableKeyword.walk(self)
    node.leftParen.walk(self)
    node.availabilitySpec.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: MatchingPatternConditionSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.caseKeyword.walk(self)
    node.pattern.walk(self)
    if let typeAnnotation = node.typeAnnotation { 
      typeAnnotation.walk(self)
    }
    node.initializer.walk(self)
    return .skipChildren
  }
  override func visit(_ node: OptionalBindingConditionSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.letOrVarKeyword.walk(self)
    node.pattern.walk(self)
    if let typeAnnotation = node.typeAnnotation { 
      typeAnnotation.walk(self)
    }
    node.initializer.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ConditionElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: DeclarationStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.declaration.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ThrowStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.throwKeyword.walk(self)
    node.expression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: IfStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.ifKeyword.walk(self)
    node.conditions.walk(self)
    node.body.walk(self)
    if let elseKeyword = node.elseKeyword { 
      elseKeyword.walk(self)
    }
    if let elseBody = node.elseBody { 
      elseBody.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ElseIfContinuationSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.ifStatement.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ElseBlockSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.elseKeyword.walk(self)
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SwitchCaseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let unknownAttr = node.unknownAttr { 
      unknownAttr.walk(self)
    }
    node.label.walk(self)
    node.statements.walk(self)
    return .skipChildren
  }
  override func visit(_ node: SwitchDefaultLabelSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.defaultKeyword.walk(self)
    node.colon.walk(self)
    return .skipChildren
  }
  override func visit(_ node: CaseItemSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.pattern.walk(self)
    if let whereClause = node.whereClause { 
      whereClause.walk(self)
    }
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: SwitchCaseLabelSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.caseKeyword.walk(self)
    node.caseItems.walk(self)
    node.colon.walk(self)
    return .skipChildren
  }
  override func visit(_ node: CatchClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.catchKeyword.walk(self)
    if let pattern = node.pattern { 
      pattern.walk(self)
    }
    if let whereClause = node.whereClause { 
      whereClause.walk(self)
    }
    node.body.walk(self)
    return .skipChildren
  }
  override func visit(_ node: PoundAssertStmtSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.poundAssert.walk(self)
    node.leftParen.walk(self)
    node.condition.walk(self)
    if let comma = node.comma { 
      comma.walk(self)
    }
    if let message = node.message { 
      message.walk(self)
    }
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: GenericWhereClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.whereKeyword.walk(self)
    node.requirementList.walk(self)
    return .skipChildren
  }
  override func visit(_ node: GenericRequirementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: SameTypeRequirementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftTypeIdentifier.walk(self)
    node.equalityToken.walk(self)
    node.rightTypeIdentifier.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: GenericParameterListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: GenericParameterSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    node.name.walk(self)
    if let colon = node.colon { 
      colon.walk(self)
    }
    if let inheritedType = node.inheritedType { 
      inheritedType.walk(self)
    }
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: GenericParameterClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftAngleBracket.walk(self)
    node.genericParameterList.walk(self)
    node.rightAngleBracket.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ConformanceRequirementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftTypeIdentifier.walk(self)
    node.colon.walk(self)
    node.rightTypeIdentifier.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: SimpleTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    visit(node.name, 
          classification: .typeIdentifier, 
          force: false)
    if let genericArgumentClause = node.genericArgumentClause { 
      genericArgumentClause.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: MemberTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.baseType.walk(self)
    node.period.walk(self)
    visit(node.name, 
          classification: .typeIdentifier, 
          force: false)
    if let genericArgumentClause = node.genericArgumentClause { 
      genericArgumentClause.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ClassRestrictionTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.classKeyword.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ArrayTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftSquareBracket.walk(self)
    node.elementType.walk(self)
    node.rightSquareBracket.walk(self)
    return .skipChildren
  }
  override func visit(_ node: DictionaryTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftSquareBracket.walk(self)
    node.keyType.walk(self)
    node.colon.walk(self)
    node.valueType.walk(self)
    node.rightSquareBracket.walk(self)
    return .skipChildren
  }
  override func visit(_ node: MetatypeTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.baseType.walk(self)
    node.period.walk(self)
    node.typeOrProtocol.walk(self)
    return .skipChildren
  }
  override func visit(_ node: OptionalTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.wrappedType.walk(self)
    node.questionMark.walk(self)
    return .skipChildren
  }
  override func visit(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.wrappedType.walk(self)
    node.exclamationMark.walk(self)
    return .skipChildren
  }
  override func visit(_ node: CompositionTypeElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.type.walk(self)
    if let ampersand = node.ampersand { 
      ampersand.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: CompositionTypeElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: CompositionTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.elements.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TupleTypeElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let inOut = node.inOut { 
      inOut.walk(self)
    }
    if let name = node.name { 
      name.walk(self)
    }
    if let secondName = node.secondName { 
      secondName.walk(self)
    }
    if let colon = node.colon { 
      colon.walk(self)
    }
    node.type.walk(self)
    if let ellipsis = node.ellipsis { 
      ellipsis.walk(self)
    }
    if let initializer = node.initializer { 
      initializer.walk(self)
    }
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: TupleTypeElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: TupleTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.elements.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: FunctionTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.arguments.walk(self)
    node.rightParen.walk(self)
    if let throwsOrRethrowsKeyword = node.throwsOrRethrowsKeyword { 
      throwsOrRethrowsKeyword.walk(self)
    }
    node.arrow.walk(self)
    node.returnType.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AttributedTypeSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let specifier = node.specifier { 
      specifier.walk(self)
    }
    if let attributes = node.attributes { 
      attributes.walk(self)
    }
    node.baseType.walk(self)
    return .skipChildren
  }
  override func visit(_ node: GenericArgumentListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: GenericArgumentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.argumentType.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: GenericArgumentClauseSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftAngleBracket.walk(self)
    node.arguments.walk(self)
    node.rightAngleBracket.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TypeAnnotationSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.colon.walk(self)
    node.type.walk(self)
    return .skipChildren
  }
  override func visit(_ node: EnumCasePatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let type = node.type { 
      type.walk(self)
    }
    node.period.walk(self)
    node.caseName.walk(self)
    if let associatedTuple = node.associatedTuple { 
      associatedTuple.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: IsTypePatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.isKeyword.walk(self)
    node.type.walk(self)
    return .skipChildren
  }
  override func visit(_ node: OptionalPatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.subPattern.walk(self)
    node.questionMark.walk(self)
    return .skipChildren
  }
  override func visit(_ node: IdentifierPatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.identifier.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AsTypePatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.pattern.walk(self)
    node.asKeyword.walk(self)
    node.type.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TuplePatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.leftParen.walk(self)
    node.elements.walk(self)
    node.rightParen.walk(self)
    return .skipChildren
  }
  override func visit(_ node: WildcardPatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.wildcard.walk(self)
    if let typeAnnotation = node.typeAnnotation { 
      typeAnnotation.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: TuplePatternElementSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    if let labelName = node.labelName { 
      labelName.walk(self)
    }
    if let labelColon = node.labelColon { 
      labelColon.walk(self)
    }
    node.pattern.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: ExpressionPatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.expression.walk(self)
    return .skipChildren
  }
  override func visit(_ node: TuplePatternElementListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: ValueBindingPatternSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.letOrVarKeyword.walk(self)
    node.valuePattern.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AvailabilitySpecListSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    return .visitChildren
  }
  override func visit(_ node: AvailabilityArgumentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.entry.walk(self)
    if let trailingComma = node.trailingComma { 
      trailingComma.walk(self)
    }
    return .skipChildren
  }
  override func visit(_ node: AvailabilityLabeledArgumentSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.label.walk(self)
    node.colon.walk(self)
    node.value.walk(self)
    return .skipChildren
  }
  override func visit(_ node: AvailabilityVersionRestrictionSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    visit(node.platform, 
          classification: .keyword, 
          force: false)
    node.version.walk(self)
    return .skipChildren
  }
  override func visit(_ node: VersionTupleSyntax) -> SyntaxVisitorContinueKind {
    if skipNodeIds.contains(node.raw.id) {
      return .skipChildren
    }
    node.majorMinor.walk(self)
    if let patchPeriod = node.patchPeriod { 
      patchPeriod.walk(self)
    }
    if let patchVersion = node.patchVersion { 
      patchVersion.walk(self)
    }
    return .skipChildren
  }
}

public enum SyntaxClassifier {
  /// Classify all tokens in the given syntax tree for syntax highlighting.
  /// If a `IncrementalTreeTransferSession` is passed, only nodes that have 
  /// changed since the last transfer will be classified.
  public static func classifyTokensInTree(
    _ syntaxTree: SourceFileSyntax,
    skipNodes: Set<SyntaxNodeId> = []
  ) -> [TokenSyntax: SyntaxClassification] {
    let classifier = _SyntaxClassifier()
    classifier.skipNodeIds = skipNodes
    syntaxTree.walk(classifier)
    return classifier.classifications
  }
}
