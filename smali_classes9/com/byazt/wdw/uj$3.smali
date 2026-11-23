.class public Lcom/byazt/wdw/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ddx/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/uj;->c(Lcom/byazt/eia/da;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/wdw/n$c;Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wdw/n$c;

.field public final synthetic tt:Lcom/byazt/wdw/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/uj;Lcom/byazt/wdw/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/uj$3;->tt:Lcom/byazt/wdw/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wdw/uj$3;->c:Lcom/byazt/wdw/n$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/byazt/wdw/uj$3;->tt:Lcom/byazt/wdw/uj;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/byazt/wdw/uj$3;->c:Lcom/byazt/wdw/n$c;

    invoke-static {p1, p2, v0}, Lcom/byazt/wdw/uj;->c(Lcom/byazt/wdw/uj;ZLcom/byazt/wdw/n$c;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/byazt/wdw/uj$3;->tt:Lcom/byazt/wdw/uj;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/byazt/wdw/uj$3;->c:Lcom/byazt/wdw/n$c;

    invoke-static {p1, v0, v1}, Lcom/byazt/wdw/uj;->c(Lcom/byazt/wdw/uj;ZLcom/byazt/wdw/n$c;)V

    return-void
.end method
