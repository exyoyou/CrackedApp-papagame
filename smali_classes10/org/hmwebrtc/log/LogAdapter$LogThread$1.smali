.class Lorg/hmwebrtc/log/LogAdapter$LogThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/log/LogAdapter$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/log/LogAdapter$LogThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/log/LogAdapter$LogThread;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/log/LogAdapter$LogThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public done()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread$1;->this$0:Lorg/hmwebrtc/log/LogAdapter$LogThread;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/log/LogAdapter$LogThread;->access$600(Lorg/hmwebrtc/log/LogAdapter$LogThread;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
