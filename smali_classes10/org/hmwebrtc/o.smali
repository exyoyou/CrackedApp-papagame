.class public final synthetic Lorg/hmwebrtc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/EglRenderer;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/EglRenderer;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/o;->b:Lorg/hmwebrtc/EglRenderer;

    iput p2, p0, Lorg/hmwebrtc/o;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/o;->b:Lorg/hmwebrtc/EglRenderer;

    iget v1, p0, Lorg/hmwebrtc/o;->c:F

    invoke-static {v0, v1}, Lorg/hmwebrtc/EglRenderer;->f(Lorg/hmwebrtc/EglRenderer;F)V

    return-void
.end method
