.class public final synthetic Lorg/hmwebrtc/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/VideoFileRenderer;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/VideoFileRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/y0;->b:Lorg/hmwebrtc/VideoFileRenderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/y0;->b:Lorg/hmwebrtc/VideoFileRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/VideoFileRenderer;->d(Lorg/hmwebrtc/VideoFileRenderer;)V

    return-void
.end method
