.class public abstract Lcom/byazt/go/AbstractEndCardFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4c9,
        0x87a
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final tt:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/go/AbstractEndCardFrameLayout;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/go/AbstractEndCardFrameLayout;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/go/AbstractEndCardFrameLayout;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public abstract getEndCardWebView()Lcom/byazt/el/SSWebView;
.end method

.method public abstract getPlayableWebView()Lcom/byazt/el/SSWebView;
.end method

.method public abstract getVideoArea()Landroid/widget/FrameLayout;
.end method

.method public abstract setClickListener(Lcom/byazt/hkv/tt;)V
.end method

.method public tt()V
    .locals 0

    return-void
.end method
