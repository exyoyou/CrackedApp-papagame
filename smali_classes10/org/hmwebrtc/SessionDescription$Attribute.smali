.class public Lorg/hmwebrtc/SessionDescription$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/SessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# static fields
.field private static final ATTR_DEVICE_DEBUG:Ljava/lang/String; = "device_debug"

.field private static final ATTR_DEVICE_LIBVERSION:Ljava/lang/String; = "device_version"

.field private static final ATTR_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final ATTR_LIBVERSION:Ljava/lang/String; = "lib_version"


# instance fields
.field private attrList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/SessionDescription$Attribute;->attrList:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/SessionDescription$Attribute;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/SessionDescription$Attribute;->attrList:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public GetAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SessionDescription$Attribute;->attrList:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/SessionDescription$Attribute;->attrList:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public GetDebugInfo()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "device_debug"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public GetDeviceModel()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "device_model"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public GetDeviceVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "device_version"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public GetLibVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "lib_version"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public SetAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lorg/hmwebrtc/SessionDescription$Attribute;->attrList:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/SessionDescription$Attribute;->attrList:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public SetDebugInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "device_debug"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public SetDeviceModel(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "device_model"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public SetDeviceVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "device_version"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public SetLibVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "lib_version"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
