.class public Lcom/byazt/jh/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/android/live/base/api/LocationProvider;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5d8,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jh/c;->getTTLocation()Lcom/bytedance/android/live/base/api/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fqu/ve;

.field public final synthetic tt:Lcom/byazt/jh/c;


# direct methods
.method public constructor <init>(Lcom/byazt/jh/c;Lcom/byazt/fqu/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jh/c$1;->tt:Lcom/byazt/jh/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/jh/c$1;->c:Lcom/byazt/fqu/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jh/c$1;->c:Lcom/byazt/fqu/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/fqu/ve;->getLatitude()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jh/c$1;->c:Lcom/byazt/fqu/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/fqu/ve;->getLongitude()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
