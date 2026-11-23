.class public final Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandleImpl;
.super Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHandleImpl"
.end annotation


# instance fields
.field private final info:Ljava/lang/invoke/MethodHandleInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandle;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleInfo;

    .line 6
    .line 7
    return-void
.end method
