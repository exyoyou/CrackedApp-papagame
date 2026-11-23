.class public Lcom/byazt/ukr/yp$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x474
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->x(Lcom/byazt/ee/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ee/c;

.field public final synthetic tt:Lcom/byazt/ukr/yp;


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Lcom/byazt/ee/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$14;->tt:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$14;->c:Lcom/byazt/ee/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ukr/yp$14;->c:Lcom/byazt/ee/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/ee/c;->c()Lcom/byazt/qal/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/qal/tt;

    .line 8
    .line 9
    const-string v1, "app_env"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x3e8

    .line 20
    .line 21
    div-long/2addr v1, v3

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qal/tt;->c(J)Lcom/byazt/qal/tt;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
