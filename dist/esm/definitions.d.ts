import { PluginListenerHandle } from "@capacitor/core";
export interface IntunePlugin {
    loginAndEnrollAccount(options: {
        email: string;
    }): Promise<void>;
    registerAndEnrollAccount(options: {
        email: string;
    }): Promise<void>;
    deRegisterAndUnenrollAccount(options: {
        email: string;
        withWipe: boolean;
    }): Promise<void>;
    deRegisterAndUnenrollAccountId(options: {
        accountId: string;
        withWipe: boolean;
    }): Promise<void>;
    openIntuneConsole(): Promise<void>;
    getEnrolledAccount(): Promise<{
        account?: string;
    }>;
    getEnrolledAccountId(): Promise<{
        accountId?: string;
    }>;
    getEnrolledAccountIds(): Promise<{
        accountIds: string[];
    }>;
    isSupportedPlatform(): Promise<{
        supported: boolean;
    }>;
    addListener(eventName: "enrollmentResult", listenerFunc: (status: {
        identity: string;
        statusCode: number;
        didSucceed: boolean;
        errorString: string;
    }) => void): Promise<PluginListenerHandle> & PluginListenerHandle;
}
