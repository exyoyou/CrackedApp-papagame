.class Lorg/cocos2dx/lib/Cocos2dxActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideUiDelayed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
