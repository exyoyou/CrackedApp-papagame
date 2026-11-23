.class public final Lcom/byazt/zj/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zj/ve;->c(Lcom/byazt/va/tt;Ljava/lang/String;)Lcom/byazt/hm/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/hm/tt;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/va/tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/va/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zj/ve$4;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zj/ve$4;->tt:Lcom/byazt/va/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public call()Lcom/byazt/hm/tt;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/zj/ve$4;->tt:Lcom/byazt/va/tt;

    invoke-virtual {v0}, Lcom/byazt/va/tt;->c()Lcom/byazt/hm/tt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/zj/ve$4;->call()Lcom/byazt/hm/tt;

    move-result-object v0

    return-object v0
.end method
