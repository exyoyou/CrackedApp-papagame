.class public Lcom/byazt/ol/n$2;
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
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ol/n;->c(Lcom/byazt/nl/uj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nl/uj;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/ol/n;


# direct methods
.method public constructor <init>(Lcom/byazt/ol/n;Lcom/byazt/nl/uj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ol/n$2;->ve:Lcom/byazt/ol/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ol/n$2;->c:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ol/n$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/n$2;->c:Lcom/byazt/nl/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ol/n$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/nl/uj;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
