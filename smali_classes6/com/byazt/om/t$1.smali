.class public Lcom/byazt/om/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0xa7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/t;->c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Lcom/byazt/ll/tt;Lcom/byazt/yf/sl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/om/c$c;

.field public final synthetic n:Lcom/byazt/om/t;

.field public final synthetic tt:Lcom/byazt/iz/tt;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/t$1;->n:Lcom/byazt/om/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/om/t$1;->c:Lcom/byazt/om/c$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/om/t$1;->tt:Lcom/byazt/iz/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/om/t$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/om/t$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/om/t$1;->n:Lcom/byazt/om/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/om/t$1;->c:Lcom/byazt/om/c$c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/om/t$1;->tt:Lcom/byazt/iz/tt;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/om/t$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/om/t$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/om/t;->c(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
