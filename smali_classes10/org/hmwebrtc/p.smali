.class public final synthetic Lorg/hmwebrtc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/EglRenderer;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/EglRenderer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/p;->b:Lorg/hmwebrtc/EglRenderer;

    iput-boolean p2, p0, Lorg/hmwebrtc/p;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/p;->b:Lorg/hmwebrtc/EglRenderer;

    iget-boolean v1, p0, Lorg/hmwebrtc/p;->c:Z

    invoke-static {v0, v1}, Lorg/hmwebrtc/EglRenderer;->d(Lorg/hmwebrtc/EglRenderer;Z)V

    return-void
.end method
