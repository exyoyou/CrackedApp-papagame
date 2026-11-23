.class public final Lcom/kwad/sdk/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bpe:Z

.field private static bpf:Lcom/kwad/sdk/utils/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/utils/d/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/utils/d/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 7
    .line 8
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/kwad/sdk/internal/api/a;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    const-string p0, "gps"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    sput-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 19
    .line 20
    :cond_0
    invoke-static {p0}, Lcom/kwad/sdk/internal/api/a;->a(Landroid/location/Location;)Lcom/kwad/sdk/internal/api/a;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sput-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 27
    .line 28
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/kwad/sdk/internal/api/a;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_2

    .line 17
    .line 18
    :cond_0
    const-string p0, "network"

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    sput-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 27
    .line 28
    :cond_1
    invoke-static {p0}, Lcom/kwad/sdk/internal/api/a;->a(Landroid/location/Location;)Lcom/kwad/sdk/internal/api/a;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sput-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 35
    .line 36
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method private static c(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/kwad/sdk/internal/api/a;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    const-string p0, "passive"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    sput-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 19
    .line 20
    :cond_0
    invoke-static {p0}, Lcom/kwad/sdk/internal/api/a;->a(Landroid/location/Location;)Lcom/kwad/sdk/internal/api/a;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    sput-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 27
    .line 28
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static dg(Landroid/content/Context;)Lcom/kwad/sdk/utils/d/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/sdk/utils/d/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/utils/d/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/sdk/utils/be;->readLocationDisable()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/kwad/sdk/utils/be;->Wf()Lcom/kwad/sdk/internal/api/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput-object v1, v0, Lcom/kwad/sdk/utils/d/a;->bsT:Lcom/kwad/sdk/internal/api/a;

    .line 20
    .line 21
    iput v2, v0, Lcom/kwad/sdk/utils/d/a;->type:I

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    sget-boolean v0, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 25
    .line 26
    if-nez v0, :cond_8

    .line 27
    .line 28
    sget-object v0, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kwad/sdk/utils/d/a;->bsT:Lcom/kwad/sdk/internal/api/a;

    .line 33
    .line 34
    if-nez v0, :cond_8

    .line 35
    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/utils/be;->readLocationDisable()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    if-nez v0, :cond_7

    .line 45
    .line 46
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 53
    .line 54
    const-wide/16 v3, 0x40

    .line 55
    .line 56
    invoke-interface {v0, v3, v4}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :try_start_0
    const-string v0, "location"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/location/LocationManager;

    .line 70
    .line 71
    const-string v3, "gps"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    sget-object v3, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 80
    .line 81
    invoke-static {p0, v0}, Lcom/kwad/sdk/utils/z;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/kwad/sdk/internal/api/a;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iput-object v4, v3, Lcom/kwad/sdk/utils/d/a;->bsT:Lcom/kwad/sdk/internal/api/a;

    .line 86
    .line 87
    :cond_4
    sget-object v3, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 88
    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    const-string v3, "network"

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    sget-object v3, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 100
    .line 101
    invoke-static {p0, v0}, Lcom/kwad/sdk/utils/z;->b(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/kwad/sdk/internal/api/a;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v4, v3, Lcom/kwad/sdk/utils/d/a;->bsT:Lcom/kwad/sdk/internal/api/a;

    .line 106
    .line 107
    :cond_5
    sget-object v3, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 108
    .line 109
    if-nez v3, :cond_6

    .line 110
    .line 111
    const-string v3, "passive"

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    sget-object v3, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 120
    .line 121
    invoke-static {p0, v0}, Lcom/kwad/sdk/utils/z;->c(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/kwad/sdk/internal/api/a;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iput-object p0, v3, Lcom/kwad/sdk/utils/d/a;->bsT:Lcom/kwad/sdk/internal/api/a;

    .line 126
    .line 127
    :cond_6
    sget-object p0, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/kwad/sdk/utils/d/a;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    return-object p0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    sput-boolean v2, Lcom/kwad/sdk/utils/z;->bpe:Z

    .line 135
    .line 136
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_0
    return-object v1

    .line 140
    :cond_8
    :goto_1
    sget-object p0, Lcom/kwad/sdk/utils/z;->bpf:Lcom/kwad/sdk/utils/d/a;

    .line 141
    .line 142
    return-object p0
.end method
