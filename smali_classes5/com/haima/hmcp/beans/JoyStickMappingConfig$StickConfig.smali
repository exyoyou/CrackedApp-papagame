.class public Lcom/haima/hmcp/beans/JoyStickMappingConfig$StickConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/beans/JoyStickMappingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickConfig"
.end annotation


# instance fields
.field public inputOp:Lcom/haima/hmcp/beans/JoyStickMappingConfig$InputOpConfig;

.field public keyboard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/beans/JoyStickMappingConfig$DirectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mouse:Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
