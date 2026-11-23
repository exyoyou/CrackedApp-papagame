.class public final synthetic Lcom/haima/hmcp/widgets/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/n;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/n;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->d(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    return-void
.end method
