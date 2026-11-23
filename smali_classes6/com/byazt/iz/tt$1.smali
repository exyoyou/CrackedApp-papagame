.class public Lcom/byazt/iz/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2dc,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iz/tt;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/iz/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iz/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iz/tt$1;->tt:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iz/tt$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/iz/tt$1;->tt:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/iz/tt;)Lcom/byazt/ul/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iz/tt$1;->tt:Lcom/byazt/iz/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/iz/tt;)Lcom/byazt/ul/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/iz/tt$1;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/byazt/ul/c;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
