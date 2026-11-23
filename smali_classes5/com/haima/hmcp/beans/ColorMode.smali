.class public Lcom/haima/hmcp/beans/ColorMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NORMAL:I = 0x0

.field public static final PANDA:I = 0x1


# instance fields
.field private mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/haima/hmcp/beans/ColorMode;->mode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/ColorMode;->mode:I

    .line 2
    .line 3
    return v0
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/ColorMode;->mode:I

    .line 2
    .line 3
    return-void
.end method
