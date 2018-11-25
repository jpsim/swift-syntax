//// Automatically Generated From SyntaxFactory.swift.gyb.
//// Do Not Edit Directly!
//===------------ SyntaxRewriter.swift - Syntax Rewriter class ------------===//
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
// This file defines the SyntaxRewriter, a class that performs a standard walk
// and tree-rebuilding pattern.
//
// Subclassers of this class can override the walking behavior for any syntax
// node and transform nodes however they like.
//
//===----------------------------------------------------------------------===//

open class SyntaxRewriter {
  public init() {}
  open func visit(_ node: UnknownDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: UnknownExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: UnknownStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: UnknownTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: UnknownPatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: CodeBlockItemSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: CodeBlockItemListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: CodeBlockSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: InOutExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: PoundColumnExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: FunctionCallArgumentListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TupleElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ArrayElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DictionaryElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: StringInterpolationSegmentsSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TryExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: DeclNameArgumentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DeclNameArgumentListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DeclNameArgumentsSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: IdentifierExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: SuperRefExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: NilLiteralExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: DiscardAssignmentExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: AssignmentExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: SequenceExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ExprListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PoundLineExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: PoundFileExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: PoundFunctionExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: PoundDsohandleExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: SymbolicReferenceExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: PrefixOperatorExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: BinaryOperatorExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ArrowExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: FloatLiteralExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: TupleExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ArrayExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: DictionaryExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ImplicitMemberExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: FunctionCallArgumentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TupleElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ArrayElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DictionaryElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: IntegerLiteralExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: StringLiteralExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: BooleanLiteralExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: TernaryExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: MemberAccessExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: DotSelfExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: IsExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: AsExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: TypeExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ClosureCaptureItemSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClosureCaptureItemListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClosureCaptureSignatureSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClosureParamSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClosureParamListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClosureSignatureSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClosureExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: UnresolvedPatternExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: FunctionCallExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: SubscriptExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: OptionalChainingExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ForcedValueExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: PostfixUnaryExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: SpecializeExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: StringSegmentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ExpressionSegmentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: StringInterpolationExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: KeyPathExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: KeyPathBaseExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ObjcNamePieceSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ObjcNameSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ObjcKeyPathExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ObjcSelectorExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: EditorPlaceholderExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: ObjectLiteralExprSyntax) -> ExprSyntax {
    return visitChildren(node) as! ExprSyntax
  }

  open func visit(_ node: TypeInitializerClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TypealiasDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: AssociatedtypeDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: FunctionParameterListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ParameterClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ReturnClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: FunctionSignatureSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: IfConfigClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: IfConfigClauseListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: IfConfigDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: PoundErrorDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: PoundWarningDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: PoundSourceLocationSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: PoundSourceLocationArgsSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DeclModifierSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: InheritedTypeSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: InheritedTypeListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TypeInheritanceClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ClassDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: StructDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: ProtocolDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: ExtensionDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: MemberDeclBlockSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: MemberDeclListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: MemberDeclListItemSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SourceFileSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: InitializerClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: FunctionParameterSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ModifierListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: FunctionDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: InitializerDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: DeinitializerDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: SubscriptDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: AccessLevelModifierSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AccessPathComponentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AccessPathSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ImportDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: AccessorParameterSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AccessorDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: AccessorListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AccessorBlockSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PatternBindingSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PatternBindingListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: VariableDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: EnumCaseElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: EnumCaseElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: EnumCaseDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: EnumDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: OperatorDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: IdentifierListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: OperatorPrecedenceAndTypesSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PrecedenceGroupDeclSyntax) -> DeclSyntax {
    return visitChildren(node) as! DeclSyntax
  }

  open func visit(_ node: PrecedenceGroupAttributeListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PrecedenceGroupRelationSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PrecedenceGroupNameListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PrecedenceGroupNameElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PrecedenceGroupAssignmentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PrecedenceGroupAssociativitySyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TokenListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: NonEmptyTokenListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AttributeSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AttributeListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SpecializeAttributeSpecListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: LabeledSpecializeEntrySyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: NamedAttributeStringArgumentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DeclNameSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ImplementsAttributeArgumentsSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ObjCSelectorPieceSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ObjCSelectorSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ContinueStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: WhileStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: DeferStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: ExpressionStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: SwitchCaseListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: RepeatWhileStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: GuardStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: WhereClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ForInStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: SwitchStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: CatchClauseListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DoStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: ReturnStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: YieldStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: YieldListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: FallthroughStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: BreakStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: CaseItemListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ConditionElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AvailabilityConditionSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: MatchingPatternConditionSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: OptionalBindingConditionSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ConditionElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: DeclarationStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: ThrowStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: IfStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: ElseIfContinuationSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ElseBlockSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SwitchCaseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SwitchDefaultLabelSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: CaseItemSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SwitchCaseLabelSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: CatchClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: PoundAssertStmtSyntax) -> StmtSyntax {
    return visitChildren(node) as! StmtSyntax
  }

  open func visit(_ node: GenericWhereClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: GenericRequirementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SameTypeRequirementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: GenericParameterListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: GenericParameterSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: GenericParameterClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ConformanceRequirementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: SimpleTypeIdentifierSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: MemberTypeIdentifierSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: ClassRestrictionTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: ArrayTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: DictionaryTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: MetatypeTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: OptionalTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: CompositionTypeElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: CompositionTypeElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: CompositionTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: TupleTypeElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TupleTypeElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TupleTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: FunctionTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: AttributedTypeSyntax) -> TypeSyntax {
    return visitChildren(node) as! TypeSyntax
  }

  open func visit(_ node: GenericArgumentListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: GenericArgumentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: GenericArgumentClauseSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: TypeAnnotationSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: EnumCasePatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: IsTypePatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: OptionalPatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: IdentifierPatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: AsTypePatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: TuplePatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: WildcardPatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: TuplePatternElementSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ExpressionPatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: TuplePatternElementListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: ValueBindingPatternSyntax) -> PatternSyntax {
    return visitChildren(node) as! PatternSyntax
  }

  open func visit(_ node: AvailabilitySpecListSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AvailabilityArgumentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AvailabilityLabeledArgumentSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: AvailabilityVersionRestrictionSyntax) -> Syntax {
    return visitChildren(node) 
  }

  open func visit(_ node: VersionTupleSyntax) -> Syntax {
    return visitChildren(node) 
  }


  open func visit(_ token: TokenSyntax) -> Syntax {
    return token
  }

  /// The function called before visiting the node and its descendents.
  ///   - node: the node we are about to visit.
  open func visitPre(_ node: Syntax) {}

  /// Override point to choose custom visitation dispatch instead of the
  /// specialized `visit(_:)` methods. Use this instead of those methods if
  /// you intend to dynamically dispatch rewriting behavior.
  /// - note: If this method returns a non-nil result, the specialized
  ///         `visit(_:)` methods will not be called for this node.
  open func visitAny(_ node: Syntax) -> Syntax? {
    return nil
  }

  /// The function called after visting the node and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: Syntax) {}

  public func visit(_ node: Syntax) -> Syntax {
    visitPre(node)
    defer { visitPost(node) }

    // If the global visitor returned non-nil, skip specialized dispatch.
    if let newNode = visitAny(node) {
      return newNode
    }

    switch node.raw.kind {
    case .token: return visit(node as! TokenSyntax)
    case .unknownDecl: return visit(node as! UnknownDeclSyntax)
    case .unknownExpr: return visit(node as! UnknownExprSyntax)
    case .unknownStmt: return visit(node as! UnknownStmtSyntax)
    case .unknownType: return visit(node as! UnknownTypeSyntax)
    case .unknownPattern: return visit(node as! UnknownPatternSyntax)
    case .codeBlockItem: return visit(node as! CodeBlockItemSyntax)
    case .codeBlockItemList: return visit(node as! CodeBlockItemListSyntax)
    case .codeBlock: return visit(node as! CodeBlockSyntax)
    case .inOutExpr: return visit(node as! InOutExprSyntax)
    case .poundColumnExpr: return visit(node as! PoundColumnExprSyntax)
    case .functionCallArgumentList: return visit(node as! FunctionCallArgumentListSyntax)
    case .tupleElementList: return visit(node as! TupleElementListSyntax)
    case .arrayElementList: return visit(node as! ArrayElementListSyntax)
    case .dictionaryElementList: return visit(node as! DictionaryElementListSyntax)
    case .stringInterpolationSegments: return visit(node as! StringInterpolationSegmentsSyntax)
    case .tryExpr: return visit(node as! TryExprSyntax)
    case .declNameArgument: return visit(node as! DeclNameArgumentSyntax)
    case .declNameArgumentList: return visit(node as! DeclNameArgumentListSyntax)
    case .declNameArguments: return visit(node as! DeclNameArgumentsSyntax)
    case .identifierExpr: return visit(node as! IdentifierExprSyntax)
    case .superRefExpr: return visit(node as! SuperRefExprSyntax)
    case .nilLiteralExpr: return visit(node as! NilLiteralExprSyntax)
    case .discardAssignmentExpr: return visit(node as! DiscardAssignmentExprSyntax)
    case .assignmentExpr: return visit(node as! AssignmentExprSyntax)
    case .sequenceExpr: return visit(node as! SequenceExprSyntax)
    case .exprList: return visit(node as! ExprListSyntax)
    case .poundLineExpr: return visit(node as! PoundLineExprSyntax)
    case .poundFileExpr: return visit(node as! PoundFileExprSyntax)
    case .poundFunctionExpr: return visit(node as! PoundFunctionExprSyntax)
    case .poundDsohandleExpr: return visit(node as! PoundDsohandleExprSyntax)
    case .symbolicReferenceExpr: return visit(node as! SymbolicReferenceExprSyntax)
    case .prefixOperatorExpr: return visit(node as! PrefixOperatorExprSyntax)
    case .binaryOperatorExpr: return visit(node as! BinaryOperatorExprSyntax)
    case .arrowExpr: return visit(node as! ArrowExprSyntax)
    case .floatLiteralExpr: return visit(node as! FloatLiteralExprSyntax)
    case .tupleExpr: return visit(node as! TupleExprSyntax)
    case .arrayExpr: return visit(node as! ArrayExprSyntax)
    case .dictionaryExpr: return visit(node as! DictionaryExprSyntax)
    case .implicitMemberExpr: return visit(node as! ImplicitMemberExprSyntax)
    case .functionCallArgument: return visit(node as! FunctionCallArgumentSyntax)
    case .tupleElement: return visit(node as! TupleElementSyntax)
    case .arrayElement: return visit(node as! ArrayElementSyntax)
    case .dictionaryElement: return visit(node as! DictionaryElementSyntax)
    case .integerLiteralExpr: return visit(node as! IntegerLiteralExprSyntax)
    case .stringLiteralExpr: return visit(node as! StringLiteralExprSyntax)
    case .booleanLiteralExpr: return visit(node as! BooleanLiteralExprSyntax)
    case .ternaryExpr: return visit(node as! TernaryExprSyntax)
    case .memberAccessExpr: return visit(node as! MemberAccessExprSyntax)
    case .dotSelfExpr: return visit(node as! DotSelfExprSyntax)
    case .isExpr: return visit(node as! IsExprSyntax)
    case .asExpr: return visit(node as! AsExprSyntax)
    case .typeExpr: return visit(node as! TypeExprSyntax)
    case .closureCaptureItem: return visit(node as! ClosureCaptureItemSyntax)
    case .closureCaptureItemList: return visit(node as! ClosureCaptureItemListSyntax)
    case .closureCaptureSignature: return visit(node as! ClosureCaptureSignatureSyntax)
    case .closureParam: return visit(node as! ClosureParamSyntax)
    case .closureParamList: return visit(node as! ClosureParamListSyntax)
    case .closureSignature: return visit(node as! ClosureSignatureSyntax)
    case .closureExpr: return visit(node as! ClosureExprSyntax)
    case .unresolvedPatternExpr: return visit(node as! UnresolvedPatternExprSyntax)
    case .functionCallExpr: return visit(node as! FunctionCallExprSyntax)
    case .subscriptExpr: return visit(node as! SubscriptExprSyntax)
    case .optionalChainingExpr: return visit(node as! OptionalChainingExprSyntax)
    case .forcedValueExpr: return visit(node as! ForcedValueExprSyntax)
    case .postfixUnaryExpr: return visit(node as! PostfixUnaryExprSyntax)
    case .specializeExpr: return visit(node as! SpecializeExprSyntax)
    case .stringSegment: return visit(node as! StringSegmentSyntax)
    case .expressionSegment: return visit(node as! ExpressionSegmentSyntax)
    case .stringInterpolationExpr: return visit(node as! StringInterpolationExprSyntax)
    case .keyPathExpr: return visit(node as! KeyPathExprSyntax)
    case .keyPathBaseExpr: return visit(node as! KeyPathBaseExprSyntax)
    case .objcNamePiece: return visit(node as! ObjcNamePieceSyntax)
    case .objcName: return visit(node as! ObjcNameSyntax)
    case .objcKeyPathExpr: return visit(node as! ObjcKeyPathExprSyntax)
    case .objcSelectorExpr: return visit(node as! ObjcSelectorExprSyntax)
    case .editorPlaceholderExpr: return visit(node as! EditorPlaceholderExprSyntax)
    case .objectLiteralExpr: return visit(node as! ObjectLiteralExprSyntax)
    case .typeInitializerClause: return visit(node as! TypeInitializerClauseSyntax)
    case .typealiasDecl: return visit(node as! TypealiasDeclSyntax)
    case .associatedtypeDecl: return visit(node as! AssociatedtypeDeclSyntax)
    case .functionParameterList: return visit(node as! FunctionParameterListSyntax)
    case .parameterClause: return visit(node as! ParameterClauseSyntax)
    case .returnClause: return visit(node as! ReturnClauseSyntax)
    case .functionSignature: return visit(node as! FunctionSignatureSyntax)
    case .ifConfigClause: return visit(node as! IfConfigClauseSyntax)
    case .ifConfigClauseList: return visit(node as! IfConfigClauseListSyntax)
    case .ifConfigDecl: return visit(node as! IfConfigDeclSyntax)
    case .poundErrorDecl: return visit(node as! PoundErrorDeclSyntax)
    case .poundWarningDecl: return visit(node as! PoundWarningDeclSyntax)
    case .poundSourceLocation: return visit(node as! PoundSourceLocationSyntax)
    case .poundSourceLocationArgs: return visit(node as! PoundSourceLocationArgsSyntax)
    case .declModifier: return visit(node as! DeclModifierSyntax)
    case .inheritedType: return visit(node as! InheritedTypeSyntax)
    case .inheritedTypeList: return visit(node as! InheritedTypeListSyntax)
    case .typeInheritanceClause: return visit(node as! TypeInheritanceClauseSyntax)
    case .classDecl: return visit(node as! ClassDeclSyntax)
    case .structDecl: return visit(node as! StructDeclSyntax)
    case .protocolDecl: return visit(node as! ProtocolDeclSyntax)
    case .extensionDecl: return visit(node as! ExtensionDeclSyntax)
    case .memberDeclBlock: return visit(node as! MemberDeclBlockSyntax)
    case .memberDeclList: return visit(node as! MemberDeclListSyntax)
    case .memberDeclListItem: return visit(node as! MemberDeclListItemSyntax)
    case .sourceFile: return visit(node as! SourceFileSyntax)
    case .initializerClause: return visit(node as! InitializerClauseSyntax)
    case .functionParameter: return visit(node as! FunctionParameterSyntax)
    case .modifierList: return visit(node as! ModifierListSyntax)
    case .functionDecl: return visit(node as! FunctionDeclSyntax)
    case .initializerDecl: return visit(node as! InitializerDeclSyntax)
    case .deinitializerDecl: return visit(node as! DeinitializerDeclSyntax)
    case .subscriptDecl: return visit(node as! SubscriptDeclSyntax)
    case .accessLevelModifier: return visit(node as! AccessLevelModifierSyntax)
    case .accessPathComponent: return visit(node as! AccessPathComponentSyntax)
    case .accessPath: return visit(node as! AccessPathSyntax)
    case .importDecl: return visit(node as! ImportDeclSyntax)
    case .accessorParameter: return visit(node as! AccessorParameterSyntax)
    case .accessorDecl: return visit(node as! AccessorDeclSyntax)
    case .accessorList: return visit(node as! AccessorListSyntax)
    case .accessorBlock: return visit(node as! AccessorBlockSyntax)
    case .patternBinding: return visit(node as! PatternBindingSyntax)
    case .patternBindingList: return visit(node as! PatternBindingListSyntax)
    case .variableDecl: return visit(node as! VariableDeclSyntax)
    case .enumCaseElement: return visit(node as! EnumCaseElementSyntax)
    case .enumCaseElementList: return visit(node as! EnumCaseElementListSyntax)
    case .enumCaseDecl: return visit(node as! EnumCaseDeclSyntax)
    case .enumDecl: return visit(node as! EnumDeclSyntax)
    case .operatorDecl: return visit(node as! OperatorDeclSyntax)
    case .identifierList: return visit(node as! IdentifierListSyntax)
    case .operatorPrecedenceAndTypes: return visit(node as! OperatorPrecedenceAndTypesSyntax)
    case .precedenceGroupDecl: return visit(node as! PrecedenceGroupDeclSyntax)
    case .precedenceGroupAttributeList: return visit(node as! PrecedenceGroupAttributeListSyntax)
    case .precedenceGroupRelation: return visit(node as! PrecedenceGroupRelationSyntax)
    case .precedenceGroupNameList: return visit(node as! PrecedenceGroupNameListSyntax)
    case .precedenceGroupNameElement: return visit(node as! PrecedenceGroupNameElementSyntax)
    case .precedenceGroupAssignment: return visit(node as! PrecedenceGroupAssignmentSyntax)
    case .precedenceGroupAssociativity: return visit(node as! PrecedenceGroupAssociativitySyntax)
    case .tokenList: return visit(node as! TokenListSyntax)
    case .nonEmptyTokenList: return visit(node as! NonEmptyTokenListSyntax)
    case .attribute: return visit(node as! AttributeSyntax)
    case .attributeList: return visit(node as! AttributeListSyntax)
    case .specializeAttributeSpecList: return visit(node as! SpecializeAttributeSpecListSyntax)
    case .labeledSpecializeEntry: return visit(node as! LabeledSpecializeEntrySyntax)
    case .namedAttributeStringArgument: return visit(node as! NamedAttributeStringArgumentSyntax)
    case .declName: return visit(node as! DeclNameSyntax)
    case .implementsAttributeArguments: return visit(node as! ImplementsAttributeArgumentsSyntax)
    case .objCSelectorPiece: return visit(node as! ObjCSelectorPieceSyntax)
    case .objCSelector: return visit(node as! ObjCSelectorSyntax)
    case .continueStmt: return visit(node as! ContinueStmtSyntax)
    case .whileStmt: return visit(node as! WhileStmtSyntax)
    case .deferStmt: return visit(node as! DeferStmtSyntax)
    case .expressionStmt: return visit(node as! ExpressionStmtSyntax)
    case .switchCaseList: return visit(node as! SwitchCaseListSyntax)
    case .repeatWhileStmt: return visit(node as! RepeatWhileStmtSyntax)
    case .guardStmt: return visit(node as! GuardStmtSyntax)
    case .whereClause: return visit(node as! WhereClauseSyntax)
    case .forInStmt: return visit(node as! ForInStmtSyntax)
    case .switchStmt: return visit(node as! SwitchStmtSyntax)
    case .catchClauseList: return visit(node as! CatchClauseListSyntax)
    case .doStmt: return visit(node as! DoStmtSyntax)
    case .returnStmt: return visit(node as! ReturnStmtSyntax)
    case .yieldStmt: return visit(node as! YieldStmtSyntax)
    case .yieldList: return visit(node as! YieldListSyntax)
    case .fallthroughStmt: return visit(node as! FallthroughStmtSyntax)
    case .breakStmt: return visit(node as! BreakStmtSyntax)
    case .caseItemList: return visit(node as! CaseItemListSyntax)
    case .conditionElement: return visit(node as! ConditionElementSyntax)
    case .availabilityCondition: return visit(node as! AvailabilityConditionSyntax)
    case .matchingPatternCondition: return visit(node as! MatchingPatternConditionSyntax)
    case .optionalBindingCondition: return visit(node as! OptionalBindingConditionSyntax)
    case .conditionElementList: return visit(node as! ConditionElementListSyntax)
    case .declarationStmt: return visit(node as! DeclarationStmtSyntax)
    case .throwStmt: return visit(node as! ThrowStmtSyntax)
    case .ifStmt: return visit(node as! IfStmtSyntax)
    case .elseIfContinuation: return visit(node as! ElseIfContinuationSyntax)
    case .elseBlock: return visit(node as! ElseBlockSyntax)
    case .switchCase: return visit(node as! SwitchCaseSyntax)
    case .switchDefaultLabel: return visit(node as! SwitchDefaultLabelSyntax)
    case .caseItem: return visit(node as! CaseItemSyntax)
    case .switchCaseLabel: return visit(node as! SwitchCaseLabelSyntax)
    case .catchClause: return visit(node as! CatchClauseSyntax)
    case .poundAssertStmt: return visit(node as! PoundAssertStmtSyntax)
    case .genericWhereClause: return visit(node as! GenericWhereClauseSyntax)
    case .genericRequirementList: return visit(node as! GenericRequirementListSyntax)
    case .sameTypeRequirement: return visit(node as! SameTypeRequirementSyntax)
    case .genericParameterList: return visit(node as! GenericParameterListSyntax)
    case .genericParameter: return visit(node as! GenericParameterSyntax)
    case .genericParameterClause: return visit(node as! GenericParameterClauseSyntax)
    case .conformanceRequirement: return visit(node as! ConformanceRequirementSyntax)
    case .simpleTypeIdentifier: return visit(node as! SimpleTypeIdentifierSyntax)
    case .memberTypeIdentifier: return visit(node as! MemberTypeIdentifierSyntax)
    case .classRestrictionType: return visit(node as! ClassRestrictionTypeSyntax)
    case .arrayType: return visit(node as! ArrayTypeSyntax)
    case .dictionaryType: return visit(node as! DictionaryTypeSyntax)
    case .metatypeType: return visit(node as! MetatypeTypeSyntax)
    case .optionalType: return visit(node as! OptionalTypeSyntax)
    case .implicitlyUnwrappedOptionalType: return visit(node as! ImplicitlyUnwrappedOptionalTypeSyntax)
    case .compositionTypeElement: return visit(node as! CompositionTypeElementSyntax)
    case .compositionTypeElementList: return visit(node as! CompositionTypeElementListSyntax)
    case .compositionType: return visit(node as! CompositionTypeSyntax)
    case .tupleTypeElement: return visit(node as! TupleTypeElementSyntax)
    case .tupleTypeElementList: return visit(node as! TupleTypeElementListSyntax)
    case .tupleType: return visit(node as! TupleTypeSyntax)
    case .functionType: return visit(node as! FunctionTypeSyntax)
    case .attributedType: return visit(node as! AttributedTypeSyntax)
    case .genericArgumentList: return visit(node as! GenericArgumentListSyntax)
    case .genericArgument: return visit(node as! GenericArgumentSyntax)
    case .genericArgumentClause: return visit(node as! GenericArgumentClauseSyntax)
    case .typeAnnotation: return visit(node as! TypeAnnotationSyntax)
    case .enumCasePattern: return visit(node as! EnumCasePatternSyntax)
    case .isTypePattern: return visit(node as! IsTypePatternSyntax)
    case .optionalPattern: return visit(node as! OptionalPatternSyntax)
    case .identifierPattern: return visit(node as! IdentifierPatternSyntax)
    case .asTypePattern: return visit(node as! AsTypePatternSyntax)
    case .tuplePattern: return visit(node as! TuplePatternSyntax)
    case .wildcardPattern: return visit(node as! WildcardPatternSyntax)
    case .tuplePatternElement: return visit(node as! TuplePatternElementSyntax)
    case .expressionPattern: return visit(node as! ExpressionPatternSyntax)
    case .tuplePatternElementList: return visit(node as! TuplePatternElementListSyntax)
    case .valueBindingPattern: return visit(node as! ValueBindingPatternSyntax)
    case .availabilitySpecList: return visit(node as! AvailabilitySpecListSyntax)
    case .availabilityArgument: return visit(node as! AvailabilityArgumentSyntax)
    case .availabilityLabeledArgument: return visit(node as! AvailabilityLabeledArgumentSyntax)
    case .availabilityVersionRestriction: return visit(node as! AvailabilityVersionRestrictionSyntax)
    case .versionTuple: return visit(node as! VersionTupleSyntax)
    default: return visitChildren(node)
    }
  }

  func visitChildren(_ node: Syntax) -> Syntax {
    // Visit all children of this node, returning `nil` if child is not
    // present. This will ensure that there are always the same number
    // of children after transforming.
    let newLayout = (0..<node.numberOfChildren).map { (i: Int) -> RawSyntax? in
      guard let child = node.child(at: i) else { return nil }
      return visit(child).raw
    }

    // Sanity check, ensure the new children are the same length.
    assert(newLayout.count == node.raw.layout.count)

    return makeSyntax(node.raw.replacingLayout(newLayout))
  }
}

/// The enum describes how the SyntaxVistor should continue after visiting
/// the current node.
public enum SyntaxVisitorContinueKind {

  /// The visitor should visit the descendents of the current node.
  case visitChildren

  /// The visitor should avoid visiting the descendents of the current node.
  case skipChildren
}

open class SyntaxVisitor {
    public init() {}
  /// Visting UnknownDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting UnknownExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting UnknownStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting UnknownTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting UnknownPatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CodeBlockItemSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CodeBlockItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CodeBlockItemListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CodeBlockItemListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CodeBlockSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CodeBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting InOutExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InOutExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundColumnExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundColumnExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionCallArgumentListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionCallArgumentListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TupleElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ArrayElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DictionaryElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting StringInterpolationSegmentsSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringInterpolationSegmentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TryExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeclNameArgumentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeclNameArgumentListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameArgumentListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeclNameArgumentsSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameArgumentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IdentifierExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IdentifierExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SuperRefExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SuperRefExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting NilLiteralExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: NilLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DiscardAssignmentExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DiscardAssignmentExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AssignmentExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AssignmentExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SequenceExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SequenceExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ExprListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExprListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundLineExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundLineExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundFileExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundFileExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundFunctionExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundFunctionExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundDsohandleExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundDsohandleExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SymbolicReferenceExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SymbolicReferenceExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrefixOperatorExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrefixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting BinaryOperatorExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: BinaryOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ArrowExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrowExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FloatLiteralExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FloatLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TupleExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ArrayExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DictionaryExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ImplicitMemberExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImplicitMemberExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionCallArgumentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionCallArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TupleElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ArrayElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DictionaryElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IntegerLiteralExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting StringLiteralExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting BooleanLiteralExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: BooleanLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TernaryExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TernaryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MemberAccessExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberAccessExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DotSelfExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DotSelfExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IsExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IsExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AsExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AsExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TypeExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureCaptureItemSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureCaptureItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureCaptureItemListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureCaptureItemListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureCaptureSignatureSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureCaptureSignatureSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureParamSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureParamSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureParamListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureParamListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureSignatureSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureSignatureSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClosureExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClosureExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting UnresolvedPatternExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnresolvedPatternExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionCallExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SubscriptExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SubscriptExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting OptionalChainingExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalChainingExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ForcedValueExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ForcedValueExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PostfixUnaryExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PostfixUnaryExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SpecializeExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SpecializeExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting StringSegmentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringSegmentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ExpressionSegmentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExpressionSegmentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting StringInterpolationExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StringInterpolationExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting KeyPathExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: KeyPathExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting KeyPathBaseExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: KeyPathBaseExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjcNamePieceSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcNamePieceSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjcNameSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcNameSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjcKeyPathExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcKeyPathExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjcSelectorExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjcSelectorExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting EditorPlaceholderExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EditorPlaceholderExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjectLiteralExprSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjectLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TypeInitializerClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeInitializerClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TypealiasDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypealiasDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AssociatedtypeDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AssociatedtypeDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionParameterListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionParameterListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ParameterClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ParameterClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ReturnClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ReturnClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionSignatureSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionSignatureSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IfConfigClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfConfigClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IfConfigClauseListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfConfigClauseListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IfConfigDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfConfigDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundErrorDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundErrorDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundWarningDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundWarningDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundSourceLocationSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundSourceLocationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundSourceLocationArgsSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundSourceLocationArgsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeclModifierSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclModifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting InheritedTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InheritedTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting InheritedTypeListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InheritedTypeListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TypeInheritanceClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeInheritanceClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClassDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClassDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting StructDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: StructDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ProtocolDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ProtocolDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ExtensionDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExtensionDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MemberDeclBlockSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberDeclBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MemberDeclListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberDeclListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MemberDeclListItemSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberDeclListItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SourceFileSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SourceFileSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting InitializerClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InitializerClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionParameterSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionParameterSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ModifierListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ModifierListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting InitializerDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: InitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeinitializerDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeinitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SubscriptDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SubscriptDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessLevelModifierSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessLevelModifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessPathComponentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessPathComponentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessPathSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessPathSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ImportDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImportDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessorParameterSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorParameterSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessorDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessorListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AccessorBlockSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AccessorBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PatternBindingSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PatternBindingSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PatternBindingListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PatternBindingListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting VariableDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting EnumCaseElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCaseElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting EnumCaseElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCaseElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting EnumCaseDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCaseDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting EnumDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting OperatorDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OperatorDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IdentifierListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IdentifierListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting OperatorPrecedenceAndTypesSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OperatorPrecedenceAndTypesSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupDeclSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupDeclSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupAttributeListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupAttributeListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupRelationSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupRelationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupNameListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupNameListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupNameElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupNameElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupAssignmentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupAssignmentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PrecedenceGroupAssociativitySyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PrecedenceGroupAssociativitySyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TokenListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TokenListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting NonEmptyTokenListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: NonEmptyTokenListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AttributeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AttributeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AttributeListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AttributeListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SpecializeAttributeSpecListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SpecializeAttributeSpecListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting LabeledSpecializeEntrySyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: LabeledSpecializeEntrySyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting NamedAttributeStringArgumentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: NamedAttributeStringArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeclNameSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclNameSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ImplementsAttributeArgumentsSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImplementsAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjCSelectorPieceSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjCSelectorPieceSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ObjCSelectorSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ObjCSelectorSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ContinueStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ContinueStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting WhileStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: WhileStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeferStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeferStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ExpressionStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExpressionStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SwitchCaseListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchCaseListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting RepeatWhileStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: RepeatWhileStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GuardStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GuardStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting WhereClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: WhereClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ForInStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ForInStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SwitchStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CatchClauseListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CatchClauseListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DoStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DoStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ReturnStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ReturnStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting YieldStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: YieldStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting YieldListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: YieldListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FallthroughStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FallthroughStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting BreakStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: BreakStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CaseItemListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CaseItemListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ConditionElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ConditionElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AvailabilityConditionSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityConditionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MatchingPatternConditionSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MatchingPatternConditionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting OptionalBindingConditionSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalBindingConditionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ConditionElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ConditionElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DeclarationStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DeclarationStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ThrowStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ThrowStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IfStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IfStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ElseIfContinuationSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ElseIfContinuationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ElseBlockSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ElseBlockSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SwitchCaseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchCaseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SwitchDefaultLabelSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchDefaultLabelSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CaseItemSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CaseItemSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SwitchCaseLabelSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SwitchCaseLabelSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CatchClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CatchClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting PoundAssertStmtSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: PoundAssertStmtSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericWhereClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericWhereClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericRequirementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericRequirementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SameTypeRequirementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SameTypeRequirementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericParameterListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericParameterListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericParameterSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericParameterSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericParameterClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericParameterClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ConformanceRequirementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ConformanceRequirementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting SimpleTypeIdentifierSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: SimpleTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MemberTypeIdentifierSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MemberTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ClassRestrictionTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ClassRestrictionTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ArrayTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ArrayTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting DictionaryTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: DictionaryTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting MetatypeTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: MetatypeTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting OptionalTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ImplicitlyUnwrappedOptionalTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CompositionTypeElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CompositionTypeElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CompositionTypeElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CompositionTypeElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting CompositionTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: CompositionTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TupleTypeElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleTypeElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TupleTypeElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleTypeElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TupleTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TupleTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting FunctionTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: FunctionTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AttributedTypeSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AttributedTypeSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericArgumentListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericArgumentListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericArgumentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting GenericArgumentClauseSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: GenericArgumentClauseSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TypeAnnotationSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TypeAnnotationSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting EnumCasePatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: EnumCasePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IsTypePatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IsTypePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting OptionalPatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: OptionalPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting IdentifierPatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: IdentifierPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AsTypePatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AsTypePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TuplePatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TuplePatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting WildcardPatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: WildcardPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TuplePatternElementSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TuplePatternElementSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ExpressionPatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ExpressionPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting TuplePatternElementListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: TuplePatternElementListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting ValueBindingPatternSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: ValueBindingPatternSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AvailabilitySpecListSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilitySpecListSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AvailabilityArgumentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AvailabilityLabeledArgumentSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityLabeledArgumentSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting AvailabilityVersionRestrictionSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: AvailabilityVersionRestrictionSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }
  /// Visting VersionTupleSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: VersionTupleSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// Visting UnknownSyntax specifically.
  ///   - Parameter node: the node we are visiting.
  ///   - Returns: how should we continue visiting.
  open func visit(_ node: UnknownSyntax) -> SyntaxVisitorContinueKind {
    return .visitChildren
  }

  /// Whether we should ever visit a given syntax kind.
  ///   - Parameter kind: the input kind we're checking.
  ///   - Returns: whether we should visit syntax nodes of this kind.
  open func shouldVisit(_ kind: SyntaxKind) -> Bool {
    return true
  }

  /// Whether we should ever visit a given token kind.
  ///   - Parameter kind: the input token kind we're checking.
  ///   - Returns: whether we should visit tokens of this kind.
  open func shouldVisit(_ kind: TokenKind) -> Bool {
    return true
  }

  open func visit(_ token: TokenSyntax) -> SyntaxVisitorContinueKind {
    return .skipChildren
  }

  /// The function called before visiting the node and its descendents.
  ///   - node: the node we are about to visit.
  open func visitPre(_ node: Syntax) {}

  /// The function called after visting the node and its descendents.
  ///   - node: the node we just finished visiting.
  open func visitPost(_ node: Syntax) {}

  public func visit(_ node: Syntax) -> SyntaxVisitorContinueKind {
    switch node.raw.kind {
    case .token: return visit(node as! TokenSyntax)
    case .unknownDecl: return visit(node as! UnknownDeclSyntax)
    case .unknownExpr: return visit(node as! UnknownExprSyntax)
    case .unknownStmt: return visit(node as! UnknownStmtSyntax)
    case .unknownType: return visit(node as! UnknownTypeSyntax)
    case .unknownPattern: return visit(node as! UnknownPatternSyntax)
    case .codeBlockItem: return visit(node as! CodeBlockItemSyntax)
    case .codeBlockItemList: return visit(node as! CodeBlockItemListSyntax)
    case .codeBlock: return visit(node as! CodeBlockSyntax)
    case .inOutExpr: return visit(node as! InOutExprSyntax)
    case .poundColumnExpr: return visit(node as! PoundColumnExprSyntax)
    case .functionCallArgumentList: return visit(node as! FunctionCallArgumentListSyntax)
    case .tupleElementList: return visit(node as! TupleElementListSyntax)
    case .arrayElementList: return visit(node as! ArrayElementListSyntax)
    case .dictionaryElementList: return visit(node as! DictionaryElementListSyntax)
    case .stringInterpolationSegments: return visit(node as! StringInterpolationSegmentsSyntax)
    case .tryExpr: return visit(node as! TryExprSyntax)
    case .declNameArgument: return visit(node as! DeclNameArgumentSyntax)
    case .declNameArgumentList: return visit(node as! DeclNameArgumentListSyntax)
    case .declNameArguments: return visit(node as! DeclNameArgumentsSyntax)
    case .identifierExpr: return visit(node as! IdentifierExprSyntax)
    case .superRefExpr: return visit(node as! SuperRefExprSyntax)
    case .nilLiteralExpr: return visit(node as! NilLiteralExprSyntax)
    case .discardAssignmentExpr: return visit(node as! DiscardAssignmentExprSyntax)
    case .assignmentExpr: return visit(node as! AssignmentExprSyntax)
    case .sequenceExpr: return visit(node as! SequenceExprSyntax)
    case .exprList: return visit(node as! ExprListSyntax)
    case .poundLineExpr: return visit(node as! PoundLineExprSyntax)
    case .poundFileExpr: return visit(node as! PoundFileExprSyntax)
    case .poundFunctionExpr: return visit(node as! PoundFunctionExprSyntax)
    case .poundDsohandleExpr: return visit(node as! PoundDsohandleExprSyntax)
    case .symbolicReferenceExpr: return visit(node as! SymbolicReferenceExprSyntax)
    case .prefixOperatorExpr: return visit(node as! PrefixOperatorExprSyntax)
    case .binaryOperatorExpr: return visit(node as! BinaryOperatorExprSyntax)
    case .arrowExpr: return visit(node as! ArrowExprSyntax)
    case .floatLiteralExpr: return visit(node as! FloatLiteralExprSyntax)
    case .tupleExpr: return visit(node as! TupleExprSyntax)
    case .arrayExpr: return visit(node as! ArrayExprSyntax)
    case .dictionaryExpr: return visit(node as! DictionaryExprSyntax)
    case .implicitMemberExpr: return visit(node as! ImplicitMemberExprSyntax)
    case .functionCallArgument: return visit(node as! FunctionCallArgumentSyntax)
    case .tupleElement: return visit(node as! TupleElementSyntax)
    case .arrayElement: return visit(node as! ArrayElementSyntax)
    case .dictionaryElement: return visit(node as! DictionaryElementSyntax)
    case .integerLiteralExpr: return visit(node as! IntegerLiteralExprSyntax)
    case .stringLiteralExpr: return visit(node as! StringLiteralExprSyntax)
    case .booleanLiteralExpr: return visit(node as! BooleanLiteralExprSyntax)
    case .ternaryExpr: return visit(node as! TernaryExprSyntax)
    case .memberAccessExpr: return visit(node as! MemberAccessExprSyntax)
    case .dotSelfExpr: return visit(node as! DotSelfExprSyntax)
    case .isExpr: return visit(node as! IsExprSyntax)
    case .asExpr: return visit(node as! AsExprSyntax)
    case .typeExpr: return visit(node as! TypeExprSyntax)
    case .closureCaptureItem: return visit(node as! ClosureCaptureItemSyntax)
    case .closureCaptureItemList: return visit(node as! ClosureCaptureItemListSyntax)
    case .closureCaptureSignature: return visit(node as! ClosureCaptureSignatureSyntax)
    case .closureParam: return visit(node as! ClosureParamSyntax)
    case .closureParamList: return visit(node as! ClosureParamListSyntax)
    case .closureSignature: return visit(node as! ClosureSignatureSyntax)
    case .closureExpr: return visit(node as! ClosureExprSyntax)
    case .unresolvedPatternExpr: return visit(node as! UnresolvedPatternExprSyntax)
    case .functionCallExpr: return visit(node as! FunctionCallExprSyntax)
    case .subscriptExpr: return visit(node as! SubscriptExprSyntax)
    case .optionalChainingExpr: return visit(node as! OptionalChainingExprSyntax)
    case .forcedValueExpr: return visit(node as! ForcedValueExprSyntax)
    case .postfixUnaryExpr: return visit(node as! PostfixUnaryExprSyntax)
    case .specializeExpr: return visit(node as! SpecializeExprSyntax)
    case .stringSegment: return visit(node as! StringSegmentSyntax)
    case .expressionSegment: return visit(node as! ExpressionSegmentSyntax)
    case .stringInterpolationExpr: return visit(node as! StringInterpolationExprSyntax)
    case .keyPathExpr: return visit(node as! KeyPathExprSyntax)
    case .keyPathBaseExpr: return visit(node as! KeyPathBaseExprSyntax)
    case .objcNamePiece: return visit(node as! ObjcNamePieceSyntax)
    case .objcName: return visit(node as! ObjcNameSyntax)
    case .objcKeyPathExpr: return visit(node as! ObjcKeyPathExprSyntax)
    case .objcSelectorExpr: return visit(node as! ObjcSelectorExprSyntax)
    case .editorPlaceholderExpr: return visit(node as! EditorPlaceholderExprSyntax)
    case .objectLiteralExpr: return visit(node as! ObjectLiteralExprSyntax)
    case .typeInitializerClause: return visit(node as! TypeInitializerClauseSyntax)
    case .typealiasDecl: return visit(node as! TypealiasDeclSyntax)
    case .associatedtypeDecl: return visit(node as! AssociatedtypeDeclSyntax)
    case .functionParameterList: return visit(node as! FunctionParameterListSyntax)
    case .parameterClause: return visit(node as! ParameterClauseSyntax)
    case .returnClause: return visit(node as! ReturnClauseSyntax)
    case .functionSignature: return visit(node as! FunctionSignatureSyntax)
    case .ifConfigClause: return visit(node as! IfConfigClauseSyntax)
    case .ifConfigClauseList: return visit(node as! IfConfigClauseListSyntax)
    case .ifConfigDecl: return visit(node as! IfConfigDeclSyntax)
    case .poundErrorDecl: return visit(node as! PoundErrorDeclSyntax)
    case .poundWarningDecl: return visit(node as! PoundWarningDeclSyntax)
    case .poundSourceLocation: return visit(node as! PoundSourceLocationSyntax)
    case .poundSourceLocationArgs: return visit(node as! PoundSourceLocationArgsSyntax)
    case .declModifier: return visit(node as! DeclModifierSyntax)
    case .inheritedType: return visit(node as! InheritedTypeSyntax)
    case .inheritedTypeList: return visit(node as! InheritedTypeListSyntax)
    case .typeInheritanceClause: return visit(node as! TypeInheritanceClauseSyntax)
    case .classDecl: return visit(node as! ClassDeclSyntax)
    case .structDecl: return visit(node as! StructDeclSyntax)
    case .protocolDecl: return visit(node as! ProtocolDeclSyntax)
    case .extensionDecl: return visit(node as! ExtensionDeclSyntax)
    case .memberDeclBlock: return visit(node as! MemberDeclBlockSyntax)
    case .memberDeclList: return visit(node as! MemberDeclListSyntax)
    case .memberDeclListItem: return visit(node as! MemberDeclListItemSyntax)
    case .sourceFile: return visit(node as! SourceFileSyntax)
    case .initializerClause: return visit(node as! InitializerClauseSyntax)
    case .functionParameter: return visit(node as! FunctionParameterSyntax)
    case .modifierList: return visit(node as! ModifierListSyntax)
    case .functionDecl: return visit(node as! FunctionDeclSyntax)
    case .initializerDecl: return visit(node as! InitializerDeclSyntax)
    case .deinitializerDecl: return visit(node as! DeinitializerDeclSyntax)
    case .subscriptDecl: return visit(node as! SubscriptDeclSyntax)
    case .accessLevelModifier: return visit(node as! AccessLevelModifierSyntax)
    case .accessPathComponent: return visit(node as! AccessPathComponentSyntax)
    case .accessPath: return visit(node as! AccessPathSyntax)
    case .importDecl: return visit(node as! ImportDeclSyntax)
    case .accessorParameter: return visit(node as! AccessorParameterSyntax)
    case .accessorDecl: return visit(node as! AccessorDeclSyntax)
    case .accessorList: return visit(node as! AccessorListSyntax)
    case .accessorBlock: return visit(node as! AccessorBlockSyntax)
    case .patternBinding: return visit(node as! PatternBindingSyntax)
    case .patternBindingList: return visit(node as! PatternBindingListSyntax)
    case .variableDecl: return visit(node as! VariableDeclSyntax)
    case .enumCaseElement: return visit(node as! EnumCaseElementSyntax)
    case .enumCaseElementList: return visit(node as! EnumCaseElementListSyntax)
    case .enumCaseDecl: return visit(node as! EnumCaseDeclSyntax)
    case .enumDecl: return visit(node as! EnumDeclSyntax)
    case .operatorDecl: return visit(node as! OperatorDeclSyntax)
    case .identifierList: return visit(node as! IdentifierListSyntax)
    case .operatorPrecedenceAndTypes: return visit(node as! OperatorPrecedenceAndTypesSyntax)
    case .precedenceGroupDecl: return visit(node as! PrecedenceGroupDeclSyntax)
    case .precedenceGroupAttributeList: return visit(node as! PrecedenceGroupAttributeListSyntax)
    case .precedenceGroupRelation: return visit(node as! PrecedenceGroupRelationSyntax)
    case .precedenceGroupNameList: return visit(node as! PrecedenceGroupNameListSyntax)
    case .precedenceGroupNameElement: return visit(node as! PrecedenceGroupNameElementSyntax)
    case .precedenceGroupAssignment: return visit(node as! PrecedenceGroupAssignmentSyntax)
    case .precedenceGroupAssociativity: return visit(node as! PrecedenceGroupAssociativitySyntax)
    case .tokenList: return visit(node as! TokenListSyntax)
    case .nonEmptyTokenList: return visit(node as! NonEmptyTokenListSyntax)
    case .attribute: return visit(node as! AttributeSyntax)
    case .attributeList: return visit(node as! AttributeListSyntax)
    case .specializeAttributeSpecList: return visit(node as! SpecializeAttributeSpecListSyntax)
    case .labeledSpecializeEntry: return visit(node as! LabeledSpecializeEntrySyntax)
    case .namedAttributeStringArgument: return visit(node as! NamedAttributeStringArgumentSyntax)
    case .declName: return visit(node as! DeclNameSyntax)
    case .implementsAttributeArguments: return visit(node as! ImplementsAttributeArgumentsSyntax)
    case .objCSelectorPiece: return visit(node as! ObjCSelectorPieceSyntax)
    case .objCSelector: return visit(node as! ObjCSelectorSyntax)
    case .continueStmt: return visit(node as! ContinueStmtSyntax)
    case .whileStmt: return visit(node as! WhileStmtSyntax)
    case .deferStmt: return visit(node as! DeferStmtSyntax)
    case .expressionStmt: return visit(node as! ExpressionStmtSyntax)
    case .switchCaseList: return visit(node as! SwitchCaseListSyntax)
    case .repeatWhileStmt: return visit(node as! RepeatWhileStmtSyntax)
    case .guardStmt: return visit(node as! GuardStmtSyntax)
    case .whereClause: return visit(node as! WhereClauseSyntax)
    case .forInStmt: return visit(node as! ForInStmtSyntax)
    case .switchStmt: return visit(node as! SwitchStmtSyntax)
    case .catchClauseList: return visit(node as! CatchClauseListSyntax)
    case .doStmt: return visit(node as! DoStmtSyntax)
    case .returnStmt: return visit(node as! ReturnStmtSyntax)
    case .yieldStmt: return visit(node as! YieldStmtSyntax)
    case .yieldList: return visit(node as! YieldListSyntax)
    case .fallthroughStmt: return visit(node as! FallthroughStmtSyntax)
    case .breakStmt: return visit(node as! BreakStmtSyntax)
    case .caseItemList: return visit(node as! CaseItemListSyntax)
    case .conditionElement: return visit(node as! ConditionElementSyntax)
    case .availabilityCondition: return visit(node as! AvailabilityConditionSyntax)
    case .matchingPatternCondition: return visit(node as! MatchingPatternConditionSyntax)
    case .optionalBindingCondition: return visit(node as! OptionalBindingConditionSyntax)
    case .conditionElementList: return visit(node as! ConditionElementListSyntax)
    case .declarationStmt: return visit(node as! DeclarationStmtSyntax)
    case .throwStmt: return visit(node as! ThrowStmtSyntax)
    case .ifStmt: return visit(node as! IfStmtSyntax)
    case .elseIfContinuation: return visit(node as! ElseIfContinuationSyntax)
    case .elseBlock: return visit(node as! ElseBlockSyntax)
    case .switchCase: return visit(node as! SwitchCaseSyntax)
    case .switchDefaultLabel: return visit(node as! SwitchDefaultLabelSyntax)
    case .caseItem: return visit(node as! CaseItemSyntax)
    case .switchCaseLabel: return visit(node as! SwitchCaseLabelSyntax)
    case .catchClause: return visit(node as! CatchClauseSyntax)
    case .poundAssertStmt: return visit(node as! PoundAssertStmtSyntax)
    case .genericWhereClause: return visit(node as! GenericWhereClauseSyntax)
    case .genericRequirementList: return visit(node as! GenericRequirementListSyntax)
    case .sameTypeRequirement: return visit(node as! SameTypeRequirementSyntax)
    case .genericParameterList: return visit(node as! GenericParameterListSyntax)
    case .genericParameter: return visit(node as! GenericParameterSyntax)
    case .genericParameterClause: return visit(node as! GenericParameterClauseSyntax)
    case .conformanceRequirement: return visit(node as! ConformanceRequirementSyntax)
    case .simpleTypeIdentifier: return visit(node as! SimpleTypeIdentifierSyntax)
    case .memberTypeIdentifier: return visit(node as! MemberTypeIdentifierSyntax)
    case .classRestrictionType: return visit(node as! ClassRestrictionTypeSyntax)
    case .arrayType: return visit(node as! ArrayTypeSyntax)
    case .dictionaryType: return visit(node as! DictionaryTypeSyntax)
    case .metatypeType: return visit(node as! MetatypeTypeSyntax)
    case .optionalType: return visit(node as! OptionalTypeSyntax)
    case .implicitlyUnwrappedOptionalType: return visit(node as! ImplicitlyUnwrappedOptionalTypeSyntax)
    case .compositionTypeElement: return visit(node as! CompositionTypeElementSyntax)
    case .compositionTypeElementList: return visit(node as! CompositionTypeElementListSyntax)
    case .compositionType: return visit(node as! CompositionTypeSyntax)
    case .tupleTypeElement: return visit(node as! TupleTypeElementSyntax)
    case .tupleTypeElementList: return visit(node as! TupleTypeElementListSyntax)
    case .tupleType: return visit(node as! TupleTypeSyntax)
    case .functionType: return visit(node as! FunctionTypeSyntax)
    case .attributedType: return visit(node as! AttributedTypeSyntax)
    case .genericArgumentList: return visit(node as! GenericArgumentListSyntax)
    case .genericArgument: return visit(node as! GenericArgumentSyntax)
    case .genericArgumentClause: return visit(node as! GenericArgumentClauseSyntax)
    case .typeAnnotation: return visit(node as! TypeAnnotationSyntax)
    case .enumCasePattern: return visit(node as! EnumCasePatternSyntax)
    case .isTypePattern: return visit(node as! IsTypePatternSyntax)
    case .optionalPattern: return visit(node as! OptionalPatternSyntax)
    case .identifierPattern: return visit(node as! IdentifierPatternSyntax)
    case .asTypePattern: return visit(node as! AsTypePatternSyntax)
    case .tuplePattern: return visit(node as! TuplePatternSyntax)
    case .wildcardPattern: return visit(node as! WildcardPatternSyntax)
    case .tuplePatternElement: return visit(node as! TuplePatternElementSyntax)
    case .expressionPattern: return visit(node as! ExpressionPatternSyntax)
    case .tuplePatternElementList: return visit(node as! TuplePatternElementListSyntax)
    case .valueBindingPattern: return visit(node as! ValueBindingPatternSyntax)
    case .availabilitySpecList: return visit(node as! AvailabilitySpecListSyntax)
    case .availabilityArgument: return visit(node as! AvailabilityArgumentSyntax)
    case .availabilityLabeledArgument: return visit(node as! AvailabilityLabeledArgumentSyntax)
    case .availabilityVersionRestriction: return visit(node as! AvailabilityVersionRestrictionSyntax)
    case .versionTuple: return visit(node as! VersionTupleSyntax)
    case .unknown: return visit(node as! UnknownSyntax)
    default: return .skipChildren
    }
  }
}


/// A wrapper over Syntax. A syntax node is only realized when explicitly asked;
/// otherwise the node is represented as a child index list from a realized
/// ancestor.
class PendingSyntaxNode {
  let parent: PendingSyntaxNode!
  private var kind: PendingSyntaxNodeKind

  private enum PendingSyntaxNodeKind {
    /// We already have a `Syntax` node realised for this node
    case realized(node: Syntax)
    /// This node does not have a `Syntax` node instantiated yet. If needed, we
    /// need to compute it from its parent RawSyntax node
    case virtual(index: Int)
  }

  var node: Syntax {
    switch kind {
    case .realized(let node):
      return node
    case .virtual(let index):
      let _node = parent.node.child(at: index)!
      kind = .realized(node: _node)
      return _node
    }
  }

  init(_ root: Syntax) {
    self.parent = nil
    self.kind = .realized(node: root)
  }

  init(_ parent: PendingSyntaxNode, _ idx: Int) {
    self.parent = parent
    self.kind = .virtual(index: idx)
  }
}


/// The raw syntax walker traverses the raw syntax tree to find
/// node kinds the SyntaxVisitor is interested and feed these syntax nodes to
/// SyntaxVisitor.
/// By traversing the raw syntax tree, we avoid realizing syntax nodes that're
/// not interesting to users' SyntaxVisitor.
class RawSyntaxVisitor {
  private let visitor: SyntaxVisitor
  private var currentNode: PendingSyntaxNode!

  required init(_ visitor: SyntaxVisitor, _ root: Syntax) {
    self.visitor = visitor
    self.currentNode = PendingSyntaxNode(root)
  }

  func shouldVisit(_ kind: SyntaxKind) -> Bool {
    return visitor.shouldVisit(kind)
  }

  func shouldVisit(_ kind: TokenKind) -> Bool {
    return visitor.shouldVisit(kind)
  }

  func addChildIdx(_ idx: Int) {
    currentNode = PendingSyntaxNode(currentNode, idx)
  }

  func moveUp() {
    currentNode = currentNode.parent
  }

  func visitPre() {
    visitor.visitPre(currentNode.node)
  }

  func visitPost() {
    visitor.visitPost(currentNode.node)
  }

  // The current raw syntax node is interesting for the user, so realize a
  // correponding syntax node and feed it into the visitor.
  func visit() -> SyntaxVisitorContinueKind {
    return visitor.visit(currentNode.node)
  }
}

extension Syntax {
  public func walk(_ visitor: SyntaxVisitor) {

    // Traverse the raw syntax tree by using the current syntax node as root.
    data.raw.accept(RawSyntaxVisitor(visitor, self))
  }
}

public enum SyntaxVerifierError: Error, CustomStringConvertible {
  case unknownSyntaxFound(node: Syntax)

  public var description: String {
    switch self {
      case .unknownSyntaxFound(let node):
        return "unknown syntax node for \"\(node)\""
    }
  }
}

public class SyntaxVerifier: SyntaxVisitor {

  var unknownNodes: [Syntax] = []

  override public func shouldVisit(_ node: SyntaxKind) -> Bool {
    return node.isUnknown
  }

  override public func shouldVisit(_ node: TokenKind) -> Bool {
    return false
  }

  override public func visitPre(_ node: Syntax) {
    assert(node.isUnknown)
    unknownNodes.append(node)
  }

  private func verify(_ node: Syntax) throws {
    node.walk(self)
    if let unknownNode = unknownNodes.first {
      throw SyntaxVerifierError.unknownSyntaxFound(node: unknownNode)
    }
  }

  private override init() {}

  public static func verify(_ node: Syntax) throws {
    try SyntaxVerifier().verify(node)
  }
}
