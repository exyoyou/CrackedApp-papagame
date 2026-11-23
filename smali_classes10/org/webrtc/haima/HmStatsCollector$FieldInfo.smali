.class public Lorg/webrtc/haima/HmStatsCollector$FieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldInfo"
.end annotation


# instance fields
.field defValue:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:Lorg/webrtc/haima/HmStatsCollector$FieldType;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;->type:Lorg/webrtc/haima/HmStatsCollector$FieldType;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
