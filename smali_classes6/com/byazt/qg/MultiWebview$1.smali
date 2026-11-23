.class public Lcom/byazt/qg/MultiWebview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11b,
        0x9cd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/MultiWebview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic n:Lcom/byazt/qg/MultiWebview;

.field public final synthetic tt:Landroid/util/AttributeSet;

.field public final synthetic uj:J

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/qg/MultiWebview;Landroid/content/Context;Landroid/util/AttributeSet;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/MultiWebview$1;->n:Lcom/byazt/qg/MultiWebview;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qg/MultiWebview$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qg/MultiWebview$1;->tt:Landroid/util/AttributeSet;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/qg/MultiWebview$1;->ve:I

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/byazt/qg/MultiWebview$1;->uj:J

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
    iget-object v0, p0, Lcom/byazt/qg/MultiWebview$1;->n:Lcom/byazt/qg/MultiWebview;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/qg/MultiWebview$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/qg/MultiWebview$1;->tt:Landroid/util/AttributeSet;

    .line 6
    .line 7
    iget v3, p0, Lcom/byazt/qg/MultiWebview$1;->ve:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qg/MultiWebview;->c(Lcom/byazt/qg/MultiWebview;Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/byazt/qg/WebViewImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/byazt/qg/MultiWebview;->ve:Lcom/byazt/qg/WebViewImpl;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/qg/MultiWebview$1;->n:Lcom/byazt/qg/MultiWebview;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/qg/MultiWebview;->c(Lcom/byazt/qg/MultiWebview;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/qg/MultiWebview$1;->n:Lcom/byazt/qg/MultiWebview;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iget-wide v3, p0, Lcom/byazt/qg/MultiWebview$1;->uj:J

    .line 27
    .line 28
    sub-long/2addr v1, v3

    .line 29
    invoke-static {v0, v1, v2}, Lcom/byazt/qg/MultiWebview;->c(Lcom/byazt/qg/MultiWebview;J)J

    .line 30
    .line 31
    .line 32
    return-void
.end method
