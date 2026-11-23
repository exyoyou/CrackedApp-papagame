.class public Lcom/beizi/ad/model/c$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field private b:D

.field private c:D


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
.method public a(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/beizi/ad/model/c$e;->b:D

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/ad/model/c$e;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/model/c$e;->a:Z

    return v0
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/ad/model/c$e;->b:D

    return-wide v0
.end method

.method public b(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/ad/model/c$e;->c:D

    return-void
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/ad/model/c$e;->c:D

    .line 2
    .line 3
    return-wide v0
.end method
