.class public final Lcom/xinzhu/overmind/hiddenapibypass/Helper$HandleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandleInfo"
.end annotation


# instance fields
.field private final handle:Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandle;

.field private final member:Ljava/lang/reflect/Member;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$HandleInfo;->member:Ljava/lang/reflect/Member;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$HandleInfo;->handle:Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandle;

    .line 8
    .line 9
    return-void
.end method
