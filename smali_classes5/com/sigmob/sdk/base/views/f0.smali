.class public final synthetic Lcom/sigmob/sdk/base/views/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/b;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/f0;->b:Lcom/sigmob/sdk/base/views/b;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f0;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/b;->a(Lcom/sigmob/sdk/base/views/b;Landroid/media/MediaPlayer;)V

    return-void
.end method
