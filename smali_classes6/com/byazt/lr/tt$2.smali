.class public Lcom/byazt/lr/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hu/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lr/tt;->c(Lcom/byazt/nn/n;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/hu/ve$c<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/lr/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/lr/tt;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lr/tt$2;->ve:Lcom/byazt/lr/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/lr/tt$2;->c:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/lr/tt$2;->tt:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/gq/t;->uj()Lcom/byazt/ou/x;

    move-result-object v3

    new-instance v4, Lcom/byazt/lr/tt$2$1;

    invoke-direct {v4, p0, v0}, Lcom/byazt/lr/tt$2$1;-><init>(Lcom/byazt/lr/tt$2;[Z)V

    const-string v5, "GET"

    invoke-interface {v3, v5, p1, v2, v4}, Lcom/byazt/ou/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/ou/my;)V

    aget-boolean p1, v0, v1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/lr/tt$2;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
