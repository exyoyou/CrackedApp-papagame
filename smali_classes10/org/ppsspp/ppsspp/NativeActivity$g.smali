.class Lorg/ppsspp/ppsspp/NativeActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/NativeActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/ppsspp/ppsspp/NativeActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$g;->b:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity$g;->b:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
