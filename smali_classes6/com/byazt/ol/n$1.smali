.class public Lcom/byazt/ol/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ol/n;->c(Lcom/byazt/nl/uj;Lcom/byazt/pct/zm;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nl/uj;

.field public final synthetic tt:Lcom/byazt/ol/uj;

.field public final synthetic uj:Lcom/byazt/ol/n;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ol/n;Lcom/byazt/nl/uj;Lcom/byazt/ol/uj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ol/n$1;->uj:Lcom/byazt/ol/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ol/n$1;->c:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ol/n$1;->tt:Lcom/byazt/ol/uj;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ol/n$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/n$1;->c:Lcom/byazt/nl/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ol/n$1;->tt:Lcom/byazt/ol/uj;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ol/n$1;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/byazt/nl/uj;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
