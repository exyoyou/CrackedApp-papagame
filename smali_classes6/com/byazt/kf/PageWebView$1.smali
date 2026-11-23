.class public Lcom/byazt/kf/PageWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x498,
        0x499
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kf/PageWebView;->tt(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/kf/PageWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/kf/PageWebView;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kf/PageWebView$1;->tt:Lcom/byazt/kf/PageWebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kf/PageWebView$1;->c:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/byazt/kf/PageWebView$1;->tt:Lcom/byazt/kf/PageWebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kf/PageWebView$1;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/kf/PageWebView;->c(Lcom/byazt/kf/PageWebView;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
