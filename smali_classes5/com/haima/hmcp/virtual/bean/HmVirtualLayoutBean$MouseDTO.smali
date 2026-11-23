.class public Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MouseDTO"
.end annotation


# instance fields
.field private btn_sensitivity:F

.field private mode:I

.field private sensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public copy()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->mode:I

    .line 7
    .line 8
    iput v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->mode:I

    .line 9
    .line 10
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->sensitivity:F

    .line 11
    .line 12
    iput v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->sensitivity:F

    .line 13
    .line 14
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->btn_sensitivity:F

    .line 15
    .line 16
    iput v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->btn_sensitivity:F

    .line 17
    .line 18
    return-object v0
.end method

.method public getBtn_sensitivity()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->btn_sensitivity:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v1, v0, v1

    .line 5
    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    :cond_0
    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->mode:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensitivity()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->sensitivity:F

    .line 2
    .line 3
    return v0
.end method

.method public setBtn_sensitivity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->btn_sensitivity:F

    .line 2
    .line 3
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->mode:I

    .line 2
    .line 3
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$MouseDTO;->sensitivity:F

    .line 2
    .line 3
    return-void
.end method
