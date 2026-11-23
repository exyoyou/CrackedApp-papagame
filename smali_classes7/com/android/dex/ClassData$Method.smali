.class public Lcom/android/dex/ClassData$Method;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/ClassData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method"
.end annotation


# instance fields
.field private final accessFlags:I

.field private final codeOffset:I

.field private final methodIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/dex/ClassData$Method;->methodIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/dex/ClassData$Method;->accessFlags:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/dex/ClassData$Method;->codeOffset:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassData$Method;->accessFlags:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodeOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassData$Method;->codeOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getMethodIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassData$Method;->methodIndex:I

    .line 2
    .line 3
    return v0
.end method
