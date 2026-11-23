.class public final synthetic Lcom/haima/hmcp/widgets/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field public final synthetic c:Lcom/haima/hmcp/beans/LongTouchBtnConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/LongTouchBtnConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/j;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iput-object p2, p0, Lcom/haima/hmcp/widgets/j;->c:Lcom/haima/hmcp/beans/LongTouchBtnConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/j;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/j;->c:Lcom/haima/hmcp/beans/LongTouchBtnConfig;

    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->a(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/LongTouchBtnConfig;)V

    return-void
.end method
