.class public Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/beans/HMInputOpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HMOneInputOPData"
.end annotation


# instance fields
.field public cursorPosition:Landroid/graphics/Point;

.field public inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

.field public inputState:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;

.field public mousePosition:Landroid/graphics/Point;

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputState:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->mousePosition:Landroid/graphics/Point;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->cursorPosition:Landroid/graphics/Point;

    .line 15
    .line 16
    return-void
.end method
